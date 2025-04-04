# System Design: Chat Application

# Understanding the architecture and system design of a real-time chat application

![](https://miro.medium.com/v2/resize:fit:700/1*QROz3v7SVkW3yY8_qbDEpQ.png)

# Requirements and Goals of the System

## Functional requirements

- **Conversation:** The system should support one-on-one and group conversations between users.
- **Acknowledgment:** The system should support message delivery acknowledgment, such as sent, delivered, and read.
- **Sharing:** The system should support sharing of media files, such as images, videos, and audio.
- **Chat storage:** The system must support the persistent storage of chat messages when a user is offline until the successful delivery of messages.
- **Push notifications:** The system should be able to notify offline users of new messages once their status becomes online.

## Non-functional requirements

- **Low latency:** Users should be able to receive messages with low latency.
- **Consistency:** Messages should be delivered in the order they were sent. Also, users must see the same chat history on all of their devices.
- **Availability:** The system should be highly available. However, consistency is more important than availability.
- **Security:** The system must be secure via end-to-end encryption. We need to ensure that only the communicating parties can see the content of messages. Nobody in between, not even we as service owners, should have access.
- **Scalability:** The system should be highly scalable to support an increasing number of users and messages per day.

# High-Level System Design

First, we need to understand how clients and servers communicate. In a chat system, clients can be either mobile or web applications. Clients do not communicate directly with each other. Each client connects to a chat service, which supports all the features we discussed previously:

- Receive messages from other clients.
- Find the right recipients for each message and relay (pass) the message to the recipients.
- If a recipient is not online, it needs to hold the messages for that recipient on the server until they are online.

Since HTTP is client-initiated, we can’t really send messages from the server to the receiver so we need to think about other techniques used to simulate a server-initiated connection: polling, long polling, and WebSocket.

- **Polling** is where the client periodically requests data from the server, generating a high number of requests which is inefficient.
- **Long polling** where the server holds the connection open until new data is available, reducing the number of requests and latency.
- **WebSocket** is a bidirectional communication protocol that enables real-time communication between the client and server over a single, long-lived connection, providing the lowest latency. It is the most common solution for sending async updates from server to client.

**Step-by-step communication between both clients is as follows:**

1. User A and User B create a communication channel with the chat server.
2. User A sends a message to the chat server.
3. When a message is received, the chat server acknowledges back to user A.
4. The chat server sends the message to user B and stores the message in the database if the receiver’s status is offline.
5. User B sends an acknowledgment to the chat server.
6. The chat server notifies user A that the message has been successfully delivered.
7. When user B reads the message, the application notifies the chat server.
8. The chat server notifies user A that user B has read the message.
- *****For client-server communication **WebSocket is preferred over HTTP(S) protocol** since HTTP(S) doesn’t keep the connection open for the servers to send frequent data to a client. With HTTP(S) protocol, a client constantly requests updates from the server, which is resource intensive and causes latency. WebSocket maintains a persistent connection between the client and a server. This protocol transfers data to the client immediately whenever it becomes available. It provides a bidirectional connection used as a common solution to send async updates from a server to a client.*

Everything else does not have to be WebSocket. In fact, most features (sign up, log in, user profile, etc) of a chat application could use the traditional request/response method over HTTP. Let’s look at the high-level components of our system. The chat system is broken down into three major categories: stateless services, stateful services, and third-party integration.

**Stateless Services** are traditional public-facing request/response services, used to manage the login, signup, user profile, etc. They sit behind a load balancer whose job is to route requests to the correct services based on the request paths. These services can be monolithic or individual microservices. We do not need to build many of these stateless services by ourselves as there are services in the market that can be integrated easily. The one service that we will discuss more in deep dive is service discovery. Its primary job is to give the client a list of DNS host names of chat servers that the client could connect to.

**Stateful Service** is the only stateful service is chat service. The service is stateful because each client maintains a persistent network connection to a chat server. In this service, a client normally does not switch to another chat server as long as the server is still available. The service discovery coordinates closely with the chat service to avoid server overloading.

**Third-party integration** is for push notifications to inform users when new messages arrived, even when the app is not running.

## Storage

We need to think of which type of database to use: relational databases or NoSQL. We’ll have two types of data in a typical chat system. The first is generic data, such as user profile, settings, and user friends list. This data should be stored in a reliable relational database. We surely need to implement replication and sharding to satisfy availability and scalability requirements.

The second is unique to chat systems: chat history data. It is important to understand the read/write pattern.

- The amount of data is enormous for chat systems (Facebook has 60 billion messages a day).
- Only recent chats are accessed frequently. Users do not usually look up old chats.
- Although very recent chat history is viewed in most cases, users might use features that require random access to data, such as search, view your mentions, jump to specific messages, etc. These cases should be supported by the data access layer.
- The read-to-write ratio is about 1:1 for 1 on 1 chat apps.

So I think the key-value store will be a great fit here because:

- Key-value stores allow easy horizontal scaling.
- Key-value stores provide very low latency to access data.
- Relational databases do not handle the long tail of data well. When the indexes grow large, random access is expensive.
- Key-value stores are adopted by other proven reliable chat applications. For example, both Facebook messenger and Discord use key-value stores.

# Data Models

## Message table for 1 on 1 chat

The primary key is ***message_id***, which helps to decide the message sequence. We cannot rely on ***created_at*** to decide the message sequence because two messages can be created at the same time.

## Message table for group chat

The composite primary key is *(**channel_id**, **message_id**).* A primary key is a unique identifier for each row in a database table. A composite primary key consists of two or more columns that together uniquely identify a row. In this case, the composite primary key is composed of two columns: ***channel_id*** and ***message_id***. Channel and group represent the same meaning here. ***channel_id*** is the partition key because all queries in a group chat operate in a channel.

## Message ID

The ***message_id*** is responsible for the order of messages.

- IDs must be unique.
- IDs should be sortable by time, meaning new rows have higher IDs than old ones.

How can we achieve those two guarantees? The first idea that comes to mind is the “***auto_increment***” keyword in MySql. However, NoSQL databases usually do not provide such a feature. The second approach is to use a global 64-bit sequence number generator like Snowflake. And the final approach is to use a local sequence number generator. Local means IDs are only unique within a group. The reason why local IDs work is that maintaining message sequences within a one-on-one channel or a group channel is sufficient. This approach is easier to implement in comparison to the global ID implementation.

# API Design

## 1. Send a message

This API is used to send a text message from a sender to a receiver by making a POST API call to the /messages API endpoint. Generally, the sender’s and receiver’s IDs are their phone numbers.

```
sendMessage(sender_ID, reciever_ID, type, text=none, media_object=none, document=none)
```

- ***sender_ID*** → unique identifier of the user who sends the message.
- ***reciever_ID*** → unique identifier of the user who receives the message.
- **type** → represents whether the sender sends a media file or a document (the default message type is text).
- ***text*** → contains the text that has to be sent as a message.
- ***media_object*** → is defined based on the type parameter. It represents the media file to be sent.
- ***document*** → the document file to be sent.

## 2. Get a message

Using this API call, users can fetch all unread messages when they come online after being offline.

```
getMessage(user_Id)
```

- ***user_id*** → unique identifier representing the user who has to fetch all unread messages.

## 3. Upload media or document file

We can upload media files via the ***uploadFile()*** API by making a ***POST*** request to the ***/v1/media*** API endpoint. A successful response will return an ID that’s forwarded to the receiver. Let’s say that the maximum file size for media that can be uploaded is 16 MB, while the limit is 100 MB for a document.

```
uploadFile(file_type, file)
```

- ***file_type*** → type of file uploaded via the API call.
- ***file*** → contains the file being uploaded via the API call.

## 4. Download a document or media file

```
downloadFile(user_id, file_id)
```

- ***user_id*** → unique identifier of the user who will download a file.
- ***file_id*** → unique identifier of a file. It’s generated while uploading a file via ***uploadFile()*** API call. The ***downloadFile()*** API call downloads the media file through this identifier. The client can find the ***file_id*** by providing the file name to the server.

# Detailed Design

## WebSocket server

One WebSocket server definitely won’t be enough to handle billions of devices, so there should be enough servers to handle this. These services are responsible for providing a port to every online user. So we need a ***WebSocket manager***which basically lays on top of a cluster of the data store (Redis).

![](https://miro.medium.com/v2/resize:fit:700/0*EmWwyE1pfaBv3-vW.png)

## Service discovery

Also, we’ll need to recommend the best chat server for a client based on their geo-location, server capacity, etc. Apache Zookeeper is a popular open-source one. It registers all the available chat servers and picks the best chat server for a client based on predefined criteria.

1. User A tries to log in to the app.

2. The load balancer sends the login request to API servers.

3. After the backend authenticates the user, service discovery finds the best chat server for User A (server 2) and the server info is returned back to User A.

4. User A connects to chat server 2 through WebSocket.

## Sending or receiving messages

A WebSocket server also needs to communicate with another service which is a ***message service***. Message service is basically a repository of messages on top of the database cluster. It acts as an interface to the database for other services interacting with the databases. It stores and retrieves messages from the database and deletes them after a specific amount of time (which we can set). And, it exposes APIs to receive messages by various filters, such as user ID, message ID, and so on.

![](https://miro.medium.com/v2/resize:fit:700/0*_1Ya30s_xHf8nNxY.png)

Now, if user A wants to send a message to user B. Since we have a number of WebSocket servers these users can be connected to different ones. So how does this work:

1. User A communicates with the corresponding WebSocket server to which it is connected.
2. The WebSocket server associated with user A identifies the WebSocket to which user B is connected via the WebSocket manager. If user B is online, the WebSocket manager responds back to user A’s WebSocket server that user B is connected with its WebSocket server.
3. At the same time, the WebSocket server sends the message to the message service and it is stored in the database (in case user B is offline). So the eviction policy for the message to be processed will be first-in-first-out (which makes perfect sense in this case). And when the messages are delivered to the receiver, they are deleted from the database.
4. Now, user A’s WebSocket server has the information that user B is connected with its own WebSocket server. Both users communicate with the WebSocket manager to find each other’s WebSocket server.
5. If user B is offline, messages are kept in the database. Whenever they become online, all the messages intended for user B are delivered via push notification. Otherwise, these messages are deleted permanently after 30 days.

In case there is a continuous conversation between both users, many calls are made to the WebSocket manager. And to minimize the latency and reduce the number of these calls, we can add a cache to each WebSocket server so:

- If both users are connected to the same server, the call to the WebSocket manager can be avoided.
- It can also cache the information of recent conversations about which user is connected to which WebSocket server.

We should also think about the expiration policy — for how long should a WebSocket server cache information? The data in the cache will become outdated if a user gets disconnected and connects with another server.

In this case, the information will be updated in the WebSocket manager which in turn, will validate the data in the cache used by the WebSocket servers, and the updated data will be sent to the corresponding cache. So, the information in the cache will remain there until it receives an invalid signal from the WebSocket manager.

## Support for group messages

WebSocket servers don’t keep track of groups because they only track active users. But in the group some users could be online and others could be offline. We need to think about other components for group messages, responsible for delivering messages to each user in a group:

- Group message handler
- Group message service
- The message queue ***Kafka***

![](https://miro.medium.com/v2/resize:fit:700/0*YbXObcsvcgh2NWqm.png)

- ***Kafka** is an open-source distributed event streaming platform that is used for building real-time data pipelines and streaming applications. It is designed to handle large volumes of data in real time. It provides a publish-subscribe messaging system that allows applications to send and receive messages in a fault-tolerant, scalable, and reliable manner. Kafka is based on a distributed architecture that consists of multiple nodes or brokers that work together to form a cluster. Producers can send messages to Kafka topics, and consumers can read messages from these topics. Kafka also supports stream processing, which allows for the processing of data streams in real time. Kafka is widely used in the industry for building real-time data pipelines and streaming applications, and it has become an essential tool in the big data ecosystem.*

User A wants to send a message to a group with some unique ID — for example, Group/A:

1. Since user A is connected to a WebSocket server, it sends a message to the message service for Group/A.
2. The group message handler communicates with the group service to retrieve data of Group/A users.
3. The message service sends the message to Kafka with other specific information about the group. The message is saved there for further processing. In Kafka terminology, a group can be a topic, and the senders and receivers can be producers and consumers, respectively.
4. Now, the group service keeps all information about users in each group in the system. It has all the information about each group, including user IDs, group ID, status, group icon, number of users, and so on. This service resides on top of the MySQL database cluster, with multiple secondary replicas distributed geographically. A Redis cache server also exists to cache data from the MySQL servers. Both geographically distributed replicas and Redis cache help to reduce latency.
5. Lastly, the group message handler follows the same process as a WebSocket server and delivers the message to each user.

## Why use SQL database in our chat app:

- **Structured Data:** Chat services require structured data to manage user conversations, user profiles, and message history. SQL databases provide a structured approach to organizing data that makes it easy to query and manage.
- **Consistency:** our service also requires consistency in data storage and retrieval to ensure that messages are delivered reliably and consistently. SQL databases guarantee the consistency of data even when multiple users are accessing it concurrently.
- **Scalability:** the ability to scale easily is important as the number of users and messages ever-increasing. SQL databases offer the ability to ****shard*** data across multiple servers and nodes, making it easier to scale horizontally.
- **Reliability:** our chat app needs to be reliable and available 24/7.
- ** *Sharding (horizontal scaling)** is the practice of adding more servers. Sharding separates large databases into smaller, more easily managed parts called shards. Each shard shares the same schema, though the actual data on each shard is unique to the shard. User data is allocated to a database server based on user IDs. Anytime you access data, a hash function is used to find the corresponding shard. In our example, user_id % 4 is used as the hash function. If the result equals 0, shard 0 is used to store and fetch data. If the result equals 1, shard 1 is used. The same logic applies to other shards.*

## User service

![](https://miro.medium.com/v2/resize:fit:700/0*0iMQzVgW659Zxinv.png)

## Media files

Usually, the WebSocket servers are lightweight and don’t support heavy logic such as handling the sending and receiving of media files. So we need to add another service — asset service, which will be responsible for sending and receiving media files. The compressed and encrypted file will be sent to the asset service to store the file on blob storage. The content is loaded onto a CDN if the asset service receives a large number of requests for some particular content.

For sending media files:

1. It first should be compressed and encrypted on the device side.
2. The compressed and encrypted file then is sent to the asset service to store the file on ****blob storage***. The asset service assigns an ID that’s associated with the sender. The asset service can also have a hash for each file to avoid duplication of content on the blob storage. For example, if a user wants to upload an image that’s already there in the blob storage, the image won’t be uploaded. Instead, the same ID is forwarded to the receiver.
3. The asset service sends the ID of media files to the receiver via the message service. The receiver downloads the media file from the blob storage using the ID.
4. The content is loaded onto a CDN if the asset service receives a large number of requests for some particular content.
- ***Blob store** is a storage solution for unstructured data. We can store photos, audio, videos, or other multimedia items there. Every type of data is stored as a blob. It follows a flat data organization pattern where there are no directories, sub-directories, and so on. It’s used by applications with a particular business requirement called write once, read many (WORM), which states that data can only be written once and that no one can change it. Blob store is extensively used by YouTube, Netflix, Facebook, and so on.*

# Final Design

![](https://miro.medium.com/v2/resize:fit:700/0*mWxHu_ToM8hD3aTA.png)

## Non-functional Requirements

Our non-functional requirements for this design are low latency, consistency, availability, and security. Let’s think of how we can achieve these requirements in our system:

**Low latency:** We can minimize the latency of the system at various levels:

- We can do this through geographically distributed WebSocket servers and the cache associated with them.
- We can use Redis cache clusters on top of MySQL database clusters.
- We can use CDNs for frequently sharing documents and media content.

**Consistency:** The system also provides high consistency in messages with the help of a FIFO messaging queue with strict ordering. However, the ordering of messages would require the Sequencer (component or algorithm that assigns a unique sequence number or timestamp) to provide ID to each message. This ID number helps the system identify the order in which the messages were sent, even if they arrive out of order. For offline users, the Mnesia database stores messages in a queue. The messages are sent later in a sequence after the user goes online.

**Availability:** The system can be made highly available if we have enough WebSocket servers and replicate data across multiple servers. When a user gets disconnected due to some fault in the WebSocket server, the session is re-created via a load balancer with a different server. Moreover, the messages are stored on the Datastore cluster (Mnesia is often used in messaging systems) following the primary-secondary replication model, which provides high availability and durability.

**Security:** The system also provides an end-to-end encryption mechanism that secures the chat between users.

**Scalability:** Due to high-performance engineering (meaning if our system was designed and developed using high-performance engineering principles), scalability might not be a significant issue. However, our proposed system is flexible, as more servers can be added or removed as the load increases or decreases.

# Trade-offs

## The trade-off between consistency and availability

According to the ****CAP theorem***, the system can provide either one or another in the event of a network partition. It is obvious that in our system, the correct ordering of messages is essential. Otherwise, the context of the information communicated between users might change significantly. Therefore, I think availability in our system can take a hit if the network partition occurs.

- *The **CAP theorem** (also called Brewer’s theorem) states that a distributed database system can only guarantee two out of these three characteristics: Consistency, Availability, and Partition Tolerance.*

## The trade-off between latency and security

Low latency is an essential factor in system design that provides a real-time experience to users. However, on the other side, sharing information or data over our chat app might be insecure without encryption. The absence of a proper security mechanism makes the data vulnerable to unauthorized access. So, we can accept a trade-off prioritizing the secure transmission of messages over low latency. For example, in the case of communications involving multimedia, encrypting them in near real-time on the sender device and decrypting them on the receiver side can be taxing for the devices, causing latency.

# Resource Estimation

We need to estimate the storage capacity, bandwidth, and number of servers to support such an enormous number of users and messages.

## Storage estimation

For example, for WatsUp there are more than 100 billion messages shared per day, let’s estimate the storage capacity based on this figure. Assume that each message takes 100 Bytes on average and our servers will keep the messages only for 30 days. So, if the user doesn’t get connected to the server within these days, the messages will be permanently deleted from the server.

```
100 billion/day ∗ 100 Bytes = 10 TB/day
```

For 30 days, the storage capacity would be approximately:

```
30 ∗ 10 TB/day = 300 TB/month
```

Besides chat messages, we also have media files, which take more than 100 Bytes per message. We also have to store users’ information and messages’ metadata — for example, time stamp, ID, and so on. Along the way, we also need encryption and decryption for secure communication (so we’ll need to store encryption keys and relevant metadata). So, to be precise, we need more than 300 TB per month, but for the sake of simplicity, let’s stick to the number 300 TB per month.

## Bandwidth estimation

Since our service will get 10TB of data each day we need to divide this by 86400 which is the number of seconds in the day, and this will give us an ***incoming bandwidth*** of 926 Mb/s.

```
10 TB / 86400 ≈  116 MBps
```

To keep it simple, let’s ignore for now the media content like images, videos, documents, and so on. Otherwise, we’ll spend the whole interview on that.

We also will need the same amount of ***outgoing bandwidth*** because the same message from the sender would need to be delivered to the receiver:

```
Total bandwidth: 116 ∗ 2 = 232 MBps
```

## Number of servers estimation

Let’s move to the estimation of the number of servers. Let’s say our system handles around 10 million connections on a single server (like WhatsApp) and the total connection per day is 2 billion:

```
N of servers = total connections per day / N of connections per server
```

```
2 billion / 10 million = 200 servers
```