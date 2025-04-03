INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(1, 'Questions to ask employer', NULL, '# Questions to ask employers in the interview

# **List of the questions for the employer**

## **Working environment**

- What hardware are you using (laptops, 2 monitors, etc.)? Can I choose it for myself?
- What OS are you using? Can I choose it for myself?
- Do you have standing desks? Can I have one?
- What is your tech stack?

## **Working agreements**

- Do you allow to work partially or fully remotely?
- What types of employment/agreement do you offer: B2B contract or permanent employment?

## **Good practices**

- Do you use issue tracking system? Which one?
- Do you use Continuous Integration Server? Which one?
- Do you use Version Control System? Which one?
- Do you use Static Code Analysis?
- Do you have project code style defined?
- Do you pratice code reviews?
- Do you practice pair programming?
- Do you practice clean code principles at work?
- How long does it take to setup the project? Is it hard?
- Do you have any onboarding process? How long is it? How does it look like?
- Do you have any tech debt? Do you track it somehow and trying to reduce it?
- Does project has any OS-specific dependencies (e.g. to Windows)?
- Do you share knowledge at work and willing to help other team members when they''re stucked?
- Do you have any internal knowledge-sharing community (e.g. internal tech talks, etc.)?
- Do you have any regular knowlege sharing meetups or tech talks?

## **Daily work**

- What do you do in case of "fire" (e.g. fuck up in the 4 AM on production)?
- Do you work overtime? Is it required or optional? Is it paid?
- What will be my potential scope of the responsibilities?
- Who will be my direct boss?
- Do you use any time-logging systems?

## **Benefits**

- Do you have any additional benefits (except for salary)?
- Do you have any integration trips?
- Do you have any educational budget for the trainings and conferences?
- Do you allow to attend trainings and conferences (as an attendee or speaker)? Are you covering cost of it?

//TODO: review it and add more questions, check JOEL score', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(2, 'Quick Note', NULL, '# Quick Note:

**For my instagram page:**

1) "If anyone is jealous of you or your success, take it as a sign that you are growing.”

# Jot down some text

---

They found Mary, as usual, deep in the study of thorough-bass and human nature; and had some extracts to admire, and some new observations of threadbare morality to listen to. Catherine and Lydia had information for them of a different sort.

# Make a to-do list

---

- [ ]  Wake up
- [ ]  Eat breakfast
- [x]  Brush teeth

# Create sub-pages

---

[Sub Page](Quick%20Note%208d678c8516624e899a6229560f164e2d/Sub%20Page%20f262860fbda24dfeac10d34a18e237aa.md)

# Embed links

---

[Beyond Frank Lloyd Wright: A Broader View of Art in Chicago](https://www.nytimes.com/2018/03/08/arts/chicago-museums-art.html?rref=collection%2Fsectioncollection%2Ftravel)

[Havana''s Symphony of Sound](https://www.nytimes.com/2018/03/12/travel/havana-cuba.html?rref=collection%2Fsectioncollection%2Ftravel)

[Chat GPT](Quick%20Note%208d678c8516624e899a6229560f164e2d/Chat%20GPT%20ef0f8e55f593467e9fed4c25ef0de931.md)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(3, 'English replies', NULL, '# English replies

convo1 : I heard a lot about you 

convo2 : Oh, really? I hope it was all good things and I’ve heard some great things about you too.

              : "Hopefully all good things!”

              : "I hope what you heard was all good!”                

replies when you’re mad

- I’m not mad, I’m just losing interest
- It’s ok, I expected the bare minimum anyway
- You keep coming back, so obviously. I’m not the problem
- You never seem to learn from your mistakes
- I don’t know why I thought you could handle this', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(4, 'AWS', NULL, '# AWS

Amazon Web Services (AWS) is widely used in software engineering for various purposes due to its flexibility, scalability, and diverse range of services. Here are some common ways AWS is used in software engineering:

1. **Cloud Infrastructure**: AWS provides a robust and scalable cloud infrastructure, allowing software engineers to host applications and services without the need for physical servers. Engineers can utilize EC2 (Elastic Compute Cloud) to deploy virtual servers, and Amazon S3 (Simple Storage Service) for storing and retrieving data.
2. **Serverless Computing:** AWS offers serverless computing through services like AWS Lambda, where software engineers can run code without managing servers. This approach enables developers to focus on writing code and not worry about infrastructure management.
3. **Database Services:** AWS provides managed database services like Amazon RDS (Relational Database Service) and Amazon DynamoDB (NoSQL database). These services help software engineers set up, operate, and scale databases without the need for manual maintenance.
4. **Content Delivery:** AWS CloudFront allows software engineers to distribute content globally through a content delivery network (CDN), ensuring faster and more reliable delivery of web content to end-users.
5. **Networking and Security:** AWS provides a wide range of networking and security services, including Virtual Private Cloud (VPC) for network isolation, AWS WAF (Web Application Firewall) for protection against web application attacks, and AWS IAM (Identity and Access Management) for managing access to AWS resources securely.
6. **Application Deployment:** AWS offers various deployment tools like AWS Elastic Beanstalk and AWS CodeDeploy, which simplify the process of deploying applications to the cloud and managing application versions.
7. **Monitoring and Logging:** AWS provides services like AWS CloudWatch and AWS X-Ray, allowing software engineers to monitor the performance of applications, set up alarms, and gain insights into application behavior for debugging and optimization.
8. **Machine Learning and AI:** AWS offers a suite of AI and machine learning services like Amazon SageMaker, AWS Rekognition, and AWS Polly, empowering software engineers to integrate AI capabilities into their applications.
9. **Internet of Things (IoT):** With AWS IoT services, software engineers can build applications that interact with and process data from IoT devices and sensors.
10. **DevOps:** AWS provides various services that support DevOps practices, such as AWS CodePipeline for continuous integration and continuous deployment (CI/CD) pipelines, and AWS CodeCommit for version control.', 2);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(5, 'LRU cache implementation', NULL, '# LRU cache implementation

Before implementing LRU cache lets understand what is caching in general is.

> By definition, Caching is a component that stores data so that future requests for that data can be served faster.
> 

## Caching Overview

- Typically when user makes a request for a data, application will fetch the request from database (*remember making database call is expensive and time consuming*).
- If user requests for same data, the application will make database call once again. Its not so efficient.
- So in order to avoid this, if we think if the data is going to be accessed frequently, then we will put that data on to the **Cache**.
- When user tries to access the data, application will see if the data is present in cache, its present its a **cache hit**, and application will return data without making call to the DB, if it wont find the data in cache then its a **cache miss**, in this case application will fetch the data from DB.

> Cache is stored in application memory and its much faster than getting data from database.
> 

![](https://miro.medium.com/v2/resize:fit:496/1*QJFv60Du885MNzRrZ198eg.gif)

Overview of how caching works

## Concern

- One major concerns with cache is that, they come with limited size, meaning ***cache will have predefined size and its usually small**.*
- Since cache lives in application memory, and application memory comes with limited size so we do not have luxury of putting all our data into cache.

## LRU Cache

By now we know that cache comes with fixed size. So if user tries to add data to cache exceeding the size of the cache, then we need to have a mechanism where we will replace one of the older cache with new cache.

**LRU Caching** is one such mechanism, where we will keep track of access order of the cache and when user adds new cache and if the cache is full, then LRU algorithm will remove the least recently used cache from the cache to make room for new cache.

## LRU Cache Implementation

We need to consider following points while implementation

- Cache will have a fixed size.
- We need to store the order of cache access, so we will know which cache was least accessed. We will use **Linkedlist** for this.
- Typically cache comes in <key, value> pair and we should store cache data in an efficient manner, so we will be using **Hashmap** to store the cache data.
- LRU cache implementation requires 2 important methods, namely put() and get().
1. **Put(key, value)** : this will be used to add new data into the cache.
2. **Get(key)** : this is used to get the data from cache using the key.

## **Put(key, value)**

- There are 2 major scenarios we need to handle while adding a cache.
1. **Cache is Not Full** :
- If the cache is not full, then we have room to add new data, so we will simply add the data to the cache(Hashmap) and store the reference of the cache in the top of the order list(Linkedlist).

![](https://miro.medium.com/v2/resize:fit:512/1*MRxlqv8eH5OUs6cChZnYCw.gif)

Put while cache is not full

2. **Cache is Full**

- If cache is full, then we do not have room to add new data. In order to create room we will remove the last element from order list (Last element is the least recently accessed cache) and also remove the data from the hashmap which was point to last cache.
- Once we remove the least recently used cache, we get room for new data, so we will add the new data to cache(Hashmap) and store the reference of the cache in the top of the order list(Linked list).

![](https://miro.medium.com/v2/resize:fit:525/1*310W7roLQxDIDo1NBr56Fg.gif)

Cache put() while cache is full

## **Get(key)**

This is the most easiest step in the implementation, and this step is used to get the data from cache using a key.

The Process is very simple, we check if the cache(Hashmp) has the date for the given key, if so we will return the data if not we will return null.

But there is an extra step here, which is updating the order of the newly accessed cache. This ensures that frequently accessed cache is on top of the list, and will be the last one to be replaced by another in coming new data.

## Coding Example

Enough theory, lets get our hands little dirty and write some code. In the following example lets create a LRU cache which stores the integer as key and String as a value.

To start using the cache you need to instantiate the LRUCacheImpl class with your desired size. (look at the main method in the code)

Use put() to add new cache and get() to get the cache value.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(6, 'OOPs', NULL, '# OOPs:

The four principles of object-oriented programming are encapsulation, abstraction, inheritance, and polymorphism.

• **Encapsulation:** Encapsulation is the mechanism of binding the data together and hiding it from the outside world. Encapsulation is achieved when each object keeps its state private so that other objects don’t have direct access to its state. Instead, they can access this state only through a set of public functions.

• **Abstraction:** Abstraction can be thought of as the natural extension of encapsulation. It means hiding all but the relevant data about an object in order to reduce the complexity of the system. In a large system, objects talk to each other, which makes it difficult to maintain a large code base; abstraction helps by hiding internal implementation details of objects and only revealing operations that are relevant to other objects.

• **Inheritance:** Inheritance is the mechanism of creating new classes from existing ones.

• **Polymorphism:** Polymorphism (from Greek, meaning “many forms”) is the ability of an object to take different forms and thus, depending upon the context, to respond to the same message in different ways. Take the example of a chess game; a chess piece can take many forms, like bishop, castle, or knight and all these pieces will respond differently to the ‘move’ message.', 3);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(7, 'Design of a call centre', NULL, '# Design of a call centre

**Problem**: There is a call center in which there is a hierarchy of employees who can attend the call. Freshers should attend the call first, followed by leads and finally the manager. If the fresher wants to escalate the call he/she can escalate it to the leads. Also, a lead can escalate the call to the manager. We can suppose that there are many freshers, many leads, and only one manager. If at any point in time no employees are free to attend the call, the caller should wait in the queue. Once an employee is free he/she can take the call.

Let’s try to solve the problem

What are the classes we can think of to define in the system

1. **Employee** (`Fresher`, `Lead`, `Manager`)
2. **Customer**
3. **Call**
4. **CallManager**

Here we will have an `Employee` class. `Fresher`, `Lead`, and `Manager` classes will be extending `Employee` class.

Let’s see how our `Employee` class will look like. It will have properties like `name`, `free` (either true or false), `rank` (to identify whether it is a fresher, a lead or a manager), and an instance of `CallManager` class. What behaviors we can think about this class? It can receive a call, end a call, and escalate a call. Below is the definition of the employee class.

```
public class Employee {
    private String name;
    private boolean free;
    protected CallManager callManager;
    protected int rank;    public Employee(String name, boolean free, CallManager callManager) {
        this.name = name;
        this.free = free;
        this.callManager = callManager;
    }
    public void receiveCall(Call call) {
        this.free = false;
        System.out.println("Call received by employee "+ this.name + " for customer " + call.getCustomer().getName());
    }    public void endCall(Call call) {
        System.out.println("Call ended by employee "+ this.name + " for customer " + call.getCustomer().getName());
        this.free = true;
        this.callManager.callEnded();
    }
    public boolean isFree() {
        return free;
    }    public void setFree(boolean free) {
        this.free = free;
    }    public int getRank() {
        return rank;
    }}
```

The property `rank` is used to know the hierarchy of the employee. Fresher is given a rank of 1, lead is given a rank of 2 and the manager is given a rank of 3.

I can think of defining subclasses `Fresher`, `Manager`, and `Lead` which will be extending `Employee` class. Let’s look at the structure of the subclasses. `Fresher` and `Lead` subclasses can escalate a call and the `Manager` class can handle all calls.

```
public class Fresher extends Employee {    
public Fresher(String name, boolean free, CallManager callManager) {
        super(name, free, callManager);
        this.rank = 1;
    }    public void escalateCall(Call call) {
        this.setFree(true);
        call.setRank(call.getRank()+1);
        this.callManager.callHandler(call);
    }
}public class Lead extends Employee {    public Lead(String name, boolean free, CallManager callManager) {
        super(name, free, callManager);
        this.rank = 2;
    }    public void escalateCall(Call call) {
        this.setFree(true);
        call.setRank(call.getRank()+1);
        this.callManager.callHandler(call);
    }
}public class Manager extends Employee {    public Manager(String name, boolean free, CallManager callManager) {
        super(name, free, callManager);
        this.rank = 3;
    }
}
```

We also need to define a `Call` class and a `Customer` class. The `Customer` class will have information about the customer who has made the call. `Call` class will store the information about the call. It will have properties like `rank` and `customer`. Following are the definitions of Call and Customer classes.

```
public class Call {
    private int rank;
    private Customer customer;    public int getRank() {
        return rank;
    }    public void setRank(int rank) {
        this.rank = rank;
    }    public Customer getCustomer() {
        return customer;
    }    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
}public class Customer {
    private String name;
    private String email;
    private Integer phoneNo;    public Customer(String name, String email, Integer phoneNo) {
        this.name = name;
        this.email = email;
        this.phoneNo = phoneNo;
    }    public String getName() {
        return name;
    }
    //other getters and setters}
```

Now we need a `CallManager` class that will actually manage all calls. `CallManager` maintains a list of employees of different hierarchies. Also, it maintains a queue to store the callers on the waiting list. It has methods like callHandler, getFreeEmployee, handleCallFromQueue, and callEnded. `CallHandler` method handles all new calls. When all the employees are busy taking calls, the call is pushed in the queue. Again when an employee becomes free the call manager checks for any call in the queue and assigns the call to some employee.

```
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
public class CallManager {
    private static int levels = 3;
    private ArrayList<Employee>[] employeesList;
    private Queue<Call> callQueue;    public CallManager(int numberOfFreshers, int numberOfLeads) {
        this.employeesList = new ArrayList[levels];
        this.callQueue = new LinkedList<>();
        ArrayList<Employee> freshersList = new ArrayList<>();
        for (int index = 0; index < numberOfFreshers; index++) {
            freshersList.add(new Fresher("Fresher" + index, true, this));
        }
        this.employeesList[0] = freshersList;
        ArrayList<Employee> leadsList = new ArrayList<>();
        for (int index = 0; index < numberOfLeads; index++) {
            freshersList.add(new Lead("Lead" + index, true, this));
        }
        this.employeesList[1] = leadsList;
        ArrayList<Employee> managersList = new ArrayList<>();
        managersList.add(new Manager("Manager", true, this));
        this.employeesList[2] = managersList;
    }
    public Employee getFreeEmployee(int rank) {
        for (int index = rank-1; index<levels; index++) {
            ArrayList<Employee> employees = this.employeesList[index];
            for (Employee employee: employees) {
                if (employee.isFree()) {
                    return employee;
                }
            }
        }
        return null;
    }
    public void callHandler(Call call) {
        Employee employee = this.getFreeEmployee(call.getRank());
        if (employee != null) {
            call.setRank(employee.getRank());
            employee.receiveCall(call);
        } else {
            callQueue.add(call);
        }
    }public void handleCallFromQueue() {
        if (callQueue.size() > 0) {
            Call call = callQueue.peek();
            int callRank = call.getRank();
            Employee employee = getFreeEmployee(callRank);
            if (employee != null) {
                callQueue.remove();
                employee.receiveCall(call);
            }
        }
    }    public void callEnded() {
        this.handleCallFromQueue();
    }}
```', 4);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(8, 'Memory management and deadlock', NULL, '# Memory management and deadlock

[https://chat.openai.com/share/4938a10b-431f-497b-b3f2-db2389036ee7](https://chat.openai.com/share/4938a10b-431f-497b-b3f2-db2389036ee7)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(9, 'Numerology', NULL, '# Numerology

• **YOUR NUMEROLOGY CHART SUMMARY**Full Birth Name: **Lakshmi Alagouda Patil**Short/Current Name: **Sneha Patil**Date of Birth: **September 2, 1996**
• 
    ◦ **9** 25.5%**8** 11%**7** 6.5%**6** 3%**5** 11%**4** 18%**3** 9%**2** 16%**1** 0%
• 
    ◦ **Your Numerology Blueprint**Is a representation of how the Numbers 1 to 9 are distributed within your overall Numerology Chart (listed below).The higher the percentage of any Number, the more likely you are to feel the influence of that Number compared to others in your chart. In your case, the traits and attributes of the **Number 9** exert a much greater influence than those of the **Number 6**.
• 
    ◦ **Date of Birth Numbers**
    ◦ Life Path - 18/9Birth Day - 2First Pinnacle - 11Second Pinnacle - 9Third Pinnacle - 2Fourth Pinnacle - 7First Cycle - 9Second Cycle - 2Third Cycle - 7Karmic Debt - 0
• 
    ◦ **Name Numbers**
    ◦ Expression - 31/4Minor Expression - 24/6Heart''s Desire - 5Minor Heart''s Desire - 7Personality - 17/8Heart''s Desire/Personality Bridge - 3Balance - 11/2Cornerstone - LSubconscious Self - 8Karmic Lessons - 5
• 
    ◦ **Planes of Expression**
    ◦ Plane of Expression Physical - 8Plane of Expression Mental - 18/9Plane of Expression Emotional - 18/9Plane of Expression Intuitive - 5
• 
    ◦ **Hybrid Numbers**
    ◦ Maturity - 13/4Life Path/Expression Bridge - 5Rational Thought - 3
•', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(10, 'Interview preparation for IBM', NULL, '# Interview preparation for IBM

**Link for Kubernetes:**[https://www.edureka.co/blog/interview-questions/kubernetes-interview-questions/](https://www.edureka.co/blog/interview-questions/kubernetes-interview-questions/)

**HTML, CSS & JavaScript:** [https://www.hirist.tech/blog/top-25-html-css-javascript-interview-questions-and-answers/](https://www.hirist.tech/blog/top-25-html-css-javascript-interview-questions-and-answers/)

**why do you want to work for IBM?**

 I’m really excited about the idea of working at IBM because it’s a place where innovation truly happens. I love the thought of developing backend services and APIs that power AI-driven solutions, knowing they have a real-world impact. Also, the chance to collaborate with top-tier experts in such a creative and team-focused environment is something I find inspiring. On top of that, IBM’s global reach and emphasis on growth make it the perfect place to expand my skills and explore new opportunities, while contributing to projects that make a difference.

OR 

I am interested in joining IBM because of its strong reputation as a global leader in innovation, particularly in areas like AI, data science, and cloud computing. I have always admired how IBM applies advanced technologies to solve real-world problems. IBM''s commitment to research and continuous development resonates deeply with my personal goals of learning, growing, and contributing to groundbreaking projects. Additionally, I appreciate IBM''s emphasis on diversity, work-life balance and fostering a competitive yet supportive environment that aligns perfectly with my own values and work style.  

**Describe a time where you showed a passion for technology.**

I showed my passion for technology by building a simple chat application using RabbitMQ and Java, where users could send messages to each other through the terminal. RabbitMQ handled the message routing with a publish-subscribe model, ensuring that messages were sent to the right queues. Working on this project helped me dive deeper into how messaging systems work and allowed me to solve real challenges with distributed communication. It was a fun and rewarding experience that fueled my curiosity for learning new technologies.

OR 

I demonstrated my passion for technology by developing a simple chat application using RabbitMQ and Java, which allowed users to communicate with each other through the terminal. In this project, I leveraged RabbitMQ’s message broker capabilities to handle message queuing and routing. The application utilized the publish-subscribe model, where messages were sent to an exchange and delivered to appropriate queues based on routing keys.

This project involved a deep dive into RabbitMQ’s architecture, understanding how to implement message exchanges, queues, and routing in a Java environment. I enjoyed solving challenges related to concurrent messaging and ensuring efficient communication between users, which ultimately enhanced my skills in distributed systems and messaging protocols. The hands-on nature of the project fueled my curiosity and passion for exploring messaging technologies in real-world applications.

**Describe a time where you showed client focus.**

**DataStructures and algorithms** 

### Merge Sort

Merge sort uses the divide and conquer strategy to sort the elements. The merge sort algorithm divides the input array into smaller segments till it obtains segments of only two elements or one element. Then, the elements in the smaller segments are sorted individually and the output segments are merged to produce the sorted array.

### Time Complexity:

- Worst-case: O(n log n)
- Best-case: O(n log n) (even if the array is sorted)

### **Quick Sort**

Quicksort follows the divide and conquer algorithm. It divides the array into two halves, sorts each of them individually, and merges the sorted output to form a larger sorted array. The quick sort algorithm picks an element as a pivot and divides the given array around that pivot.

### Time Complexity:

- Worst-case: O(n²) (happens when the pivot is the smallest or largest element repeatedly)
- Best-case: O(n log n)

### 1. **Bubble Sort**

Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in the wrong order. 

### Time Complexity:

- Worst-case: O(n²)
- Best-case: O(n) (when the array is already sorted)

### 2. **Selection Sort**

Selection Sort repeatedly finds the minimum element from the unsorted part of the list and swaps it with the first unsorted element.

### Time Complexity:

- Worst-case: O(n²)
- Best-case: O(n²) (there is no significant improvement even if the array is already sorted)

### 3. **Insertion Sort**

Insertion Sort builds the sorted array one element at a time, by repeatedly picking the next element and inserting it into the correct position within the already sorted part.

### Time Complexity:

- Worst-case: O(n²)
- Best-case: O(n) (when the array is already sorted)

### Conclusion:

- **Bubble Sort** and **Selection Sort** are simple but inefficient for large datasets.
- **Insertion Sort** is good for small or nearly sorted datasets.
- **Merge Sort** and **Quick Sort** are more efficient for large datasets, with Quick Sort often being faster but having worse worst-case performance.

## Searching algorithms:

### 1. **Linear Search**

Linear Search sequentially checks each element in a list until it finds the target element or reaches the end of the list. It works on **both sorted and unsorted** data.

### Time Complexity:

- **Worst-case**: O(n) – when the element is at the end or not present.
- **Best-case**: O(1) – when the element is at the start.

### 2. **Binary Search**

Binary Search is much faster than Linear Search but requires the data to be **sorted**. It works by repeatedly dividing the search range in half, comparing the target element with the middle element.

### Time Complexity:

- **Worst-case**: O(log n) – because the search space is halved in each step.
- **Best-case**: O(1) – if the middle element is the target on the first try.

## String literals and pool

### 1. **String Creation Using String Literal**

When you create a `String` using a literal (e.g., `"Hello"`), Java looks for the string in the **String Constant Pool** (also called the **String Intern Pool**). If the literal already exists in the pool, Java will return a reference to the existing string, avoiding duplication. If it doesn''t exist, Java creates a new string object in the pool.

Example:

```java
java
Copy code
String s1 = "Hello";
String s2 = "Hello";

```

In this case, both `s1` and `s2` point to the same object in the **String Constant Pool** because Java reuses the existing string.

### 2. **String Creation Using `new()` Keyword**

When you create a `String` using the `new()` keyword (e.g., `new String("Hello")`), Java explicitly creates a new `String`object on the **heap**, even if an identical string already exists in the **String Constant Pool**.

Example:

```java
java
Copy code
String s3 = new String("Hello");

```

Here, `s3` is a reference to a new `String` object created in the heap, even though `"Hello"` may already exist in the String Constant Pool. Therefore, `s3` will not be the same object as a string created using a literal.

### Key Differences:

1. **Memory Location**:
    - **String Literal**: Stored in the **String Constant Pool**. Java reuses the string if it already exists in the pool.
    - **`new String()`**: Creates a new object in the **heap**, even if the string already exists in the String Constant Pool.
2. **Object Reuse**:
    - **String Literal**: Reuses the object from the String Pool if it already exists.
    - **`new String()`**: Always creates a new object.
3. **Performance**:
    - **String Literal**: More memory-efficient and faster because it can reuse strings.
    - **`new String()`**: Less memory-efficient as it creates a new object, which adds overhead.

### Example to Illustrate the Difference:

```java
java
Copy code
String s1 = "Hello";
String s2 = "Hello";
String s3 = new String("Hello");

System.out.println(s1 == s2);  // true, both reference the same object in the pool
System.out.println(s1 == s3);  // false, s3 is a new object in the heap

```

Here, `s1 == s2` evaluates to `true` because they both reference the same object in the String Pool, while `s1 == s3`evaluates to `false` because `s3` references a new object created in the heap.

This highlights the main difference between using string literals and the `new` keyword when creating `String` objects in Java.

### What is a marker interface?

An Interface is recognized as an empty interface (no field or methods) it is called a marker interface. Examples of marker interfaces are Serializable, Cloneable, and Remote interfaces.

# Git

### 1. **git fetch:**

- **Definition:** `git fetch` updates your local repository with the latest changes from the remote repository without modifying your working directory. It retrieves any new commits, branches, tags, etc., but **does not** automatically merge these changes into your current working branch.
- **Use Case:** When you want to see the changes on the remote branch before integrating them into your local branch. It gives you the opportunity to inspect the differences and manually merge them later if needed.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(11, 'System Design Chat Application', NULL, '# System Design: Chat Application

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
```', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(12, 'Importent questions for interview', NULL, '# Importent questions for interview:

**About the Capgemini Experience:**

Thank you for this opportunity

I am Sneha Patil and I recently moved to the Ireland with my husband,
currently I have Stamp 1G Spouse visa work permit. I''ve worked for Capgemini as a software developer for 1.8 years in India.

I joined capgemini as a Software Engineer, there I had a 3 to 4 months of training on Full Stack Developer.and i did projects on full stack using springboot in the back end
and angular in the front end and used MySQL for database.

```
After training I got a project which was uk based client there I worked in the back end API team, where we worked on a customer service application
using spring-boot framework.

There I worked on tasks like Available credit detail that provides some details of the credit card like 1) balance of the credit card 2) credit limit and
3) owner of the credit card means it shows the personal details of the owner

credit limit means there will be a charge if the credit limit exceeds the limit.

add authorized buyer and delete

 created method add an authorized buyer to invite a new individual to access the Authorized Buyer.

When we created add method, its state is set to INVITED and sends an invitation email.
Then the individual must click ACCEPT INVITATION to gain access to the Authorized Buyers.

and created a delete method for deleting the customer permanently.

there we used hibernate which provides the mappings that we add between objects and tables.
It ensures that data is stored/retrieved from the database based on the mappings.

 we used Fiserv api to get real-time transactions and to get payment information.

we used to have 3 weeks sprint. and we used JIRA to create stories and assign tasks.

add used AWS to deply our projects.

```

=============================================================================================================

what felt you challenging in your project?

```
when i was studying i used to do projects and it was different kind of flow, but as i started working in the company as a software engineer i learnt so many
new things, how the process works, how our teams are structured and how we work as a team, there i felt litle challenging at the starting, but it was interesting
at the same time teamates were very helpful.

```

**Salary expectations:**

Based on my research and experience, I believe a fair salary range for this position would be 45k - 50k. Of course, (it''s negotiable) salary is just an aspect of the total compensation package, and I''m also interested in learning more about the benefits, opportunities for growth, and other aspects of the job. I''m open to discussing this further and finding a solution that works for both of us.

**why do you want to work for IBM?**

I''m excited about the opportunity to work with IBM because of its strong reputation as a global leader in innovation, especially in areas like AI, data science, and cloud computing. I’ve always admired how IBM leverages cutting-edge technology to tackle real-world challenges. The company’s focus on research and continuous development aligns perfectly with my personal goals. I’m also drawn to it’s commitment to diversity and work-life balance, as well as the collaborative yet competitive environment, which fits well with my values and work style.

**What motivates you to apply to this job?** 

I''m excited to apply for the Graduate Software Developer role at IBM because it offers the chance to work with some of the most talented people in the industry on cutting-edge technologies like AI and cloud solutions. I''m eager to learn, grow, and collaborate in such an innovative environment while contributing to impactful projects. IBM''s focus on continuous learning and diversity also aligns perfectly with my personal and career goals.

**What projects are you proud to have accomplished and why?** 

One project I’m particularly proud of a personal project where I developed a Recipe AI application that integrates Angular for the front-end and Spring Boot for the backend, leveraging the OpenAI API to generate recipes and corresponding images.

This project was exciting and challenging because it involved creating a seamless user experience where users can input recipe-related queries and receive not only detailed recipes but also images of the final dish, all generated by the AI. 

I’m proud of this project because it brought together various technologies I’m passionate about, and it resulted in a highly functional and innovative application.

**Why you have year gap?**

 I took time to focus on personal reasons and personal projects. The move to Ireland was a significant transition, and I dedicated time to settling into our new environment. At the same time, I seized the opportunity to work on personal projects that have enriched my technical skills and creativity. This period allowed me to grow both personally and professionally, and now I’m eager to apply these enhanced skills and experiences to my next professional challenge.

**why should we hire you ?**

Thank you for asking me that question. Based on my experience and qualifications, I believe that I would be a strong candidate for this position.

I have experience working in Agile environments, and I am comfortable with the entire software development life cycle, from requirements gathering to testing and deployment. I am confident that I can quickly learn and adapt to the standards and processes while delivering software solutions that meet expectations.

**Strengths and Weakness:**

As a software developer, my biggest strength is my ability to solve complex problems through analytical thinking and a strong understanding of programming principles. I enjoy breaking down problems into smaller, more manageable components and developing solutions that are both efficient and scalable.

My greatest weakness as a software developer is my tendency to get deeply involved in a project and lose track of time. While this can be a strength in terms of my dedication to the work, it can sometimes lead to my neglecting other responsibilities and failing to maintain a healthy work-life balance. I am aware of this tendency and have been working to improve my time-management skills to ensure that I am able to prioritize my work effectively while still taking care of myself outside of work.

**Describe a time where you showed a passion for technology.**

I showed my passion for technology by building a simple chat application using RabbitMQ and Java, where users could send messages to each other through the terminal. RabbitMQ handled the message routing with a publish-subscribe model, ensuring that messages were sent to the right queues. Working on this project helped me dive deeper into how messaging systems work and allowed me to solve real challenges with distributed communication. It was a fun and rewarding experience that fueled my curiosity for learning new technologies.

OR 

I demonstrated my passion for technology by developing a simple chat application using RabbitMQ and Java, which allowed users to communicate with each other through the terminal. In this project, I leveraged RabbitMQ’s message broker capabilities to handle message queuing and routing. The application utilized the publish-subscribe model, where messages were sent to an exchange and delivered to appropriate queues based on routing keys.

This project involved a deep dive into RabbitMQ’s architecture, understanding how to implement message exchanges, queues, and routing in a Java environment. I enjoyed solving challenges related to concurrent messaging and ensuring efficient communication between users, which ultimately enhanced my skills in distributed systems and messaging protocols. The hands-on nature of the project fueled my curiosity and passion for exploring messaging technologies in real-world applications.

**questions:**

1. Can you tell me more about the team I would be working with?
2. What does a typical day or week look like for someone in this role?
3. What are the biggest challenges the team or company is currently facing?
4. How does the company support professional development and career growth?
5. Can you describe the company culture and how it supports work-life balance?

**Questions to ask in the interview at last** 

1. What qualities do you think are important for someone to excel in this role and succeed in this company?
2. Can you tell me about the company culture and work environment?
3. What are the biggest challenges the team is currently facing, and how do you see this role helping to address those challenges?
4. How does the company support employee growth and development?
5. Can you tell me more about the company''s strategy for growth and expansion, and how this role fits into that plan?
6. What are the next steps in the hiring process, and when can I expect to hear back from you?
7. How does the company approach work-life balance and employee well-being?
8. Can you tell me about a project or initiative the team is currently working on that excites you?
9. What is the typical career progression for someone in this role or within the company?
10. Can you tell me about a challenge or obstacle the company faced and how it was overcome?
11. Assuming I were to join the company and succeed in this role, would there be opportunities for me to explore other roles within the company that align with my skills and interests?”

**Memory MAnagement in Java:**

Memory management in Java is handled automatically by the Java Virtual Machine (JVM). The JVM is responsible for allocating and deallocating memory for Java objects during program execution.

The JVM divides the memory into two parts: the heap and the stack. The heap is the memory area where objects are stored, while the stack is the memory area where method calls and local variables are stored.

When a new object is created, the JVM allocates memory for it on the heap. When the object is no longer needed, the JVM automatically deallocates the memory, freeing it up for other objects to use.

One important aspect of memory management in Java is garbage collection. Garbage collection is the process of automatically freeing up memory that is no longer being used by an object. The garbage collector runs periodically in the background, identifying objects that are no longer being referenced by any part of the program and freeing up their memory.

In addition to automatic memory management, Java provides a few mechanisms for developers to manage memory manually. For example, the System.gc() method can be called to request that the garbage collector run immediately, rather than waiting for its next scheduled run. The java.lang.Runtime class provides methods for querying and setting various JVM parameters, such as the size of the heap.

Overall, memory management in Java is designed to be simple and automatic, so that developers can focus on writing code rather than worrying about memory allocation and deallocation.

**Call by value  & Call by reference:**

**Call by value** means that the value of the argument is copied into a new variable and passed into the method. This means that any changes made to the parameter within the method do not affect the original value of the argument outside the method. Java uses call by value for primitive data types, such as int, boolean, and float.

**Call by reference** means that a reference to the original object is passed into the method. This means that any changes made to the parameter within the method affect the original object outside the method. Java uses call by reference for non-primitive data types, such as arrays, strings, and objects.

In summary, call by value means that a copy of the argument value is passed into the method, while call by reference means that a reference to the original object is passed into the method. Java uses call by value for primitive data types, and call by reference for non-primitive data types.

**Lambda Expression:**

Lambda expression basically express the instance of **Functional Interface.** 

An Interface with single abstract method is called **Functional Interface.**  An example is java.lang.Runnable. 

**Technical interview questions for SDE 1 Customer Success Engineer :**

1. General Technical Knowledge:

**Q: What is your experience with programming languages? Which languages are you proficient in?**
A: I have experience with Java, Python, and JavaScript, and I am proficient in Java. I have also worked with other languages such as C++ and Ruby.

Q: **Explain the basics of networking and how it relates to customer success.**
A: Networking refers to the communication of data between two or more devices. As a customer success engineer, it is important to have a basic understanding of networking principles such as IP addresses, ports, and protocols, as they relate to troubleshooting technical issues for customers.

Q: **What experience do you have with cloud computing technologies such as AWS, Azure, or GCP?**
A: I have experience with AWS and Azure, specifically with deploying applications and managing infrastructure using these cloud computing platforms.

**How do you troubleshoot technical issues for a customer?**
A: I follow a systematic approach when troubleshooting technical issues for customers. This includes gathering information about the issue, reproducing the problem, isolating the root cause, and implementing a solution.

1. **Troubleshooting and Problem-Solving:**

Q: **A customer reports that they are experiencing performance issues with their application. What steps would you take to diagnose the problem?**
A: I would start by gathering information about the customer''s environment, including the size of their database, the number of concurrent users, and the hardware and software configuration. I would then reproduce the issue and use tools such as performance monitoring and profiling to identify the bottleneck. Finally, I would implement a solution, such as optimizing the database or caching frequently accessed data.

Q: **A customer reports that they are unable to log in to their account. What steps would you take to identify the root cause of the problem?**
A: I would start by verifying that the customer is using the correct username and password. If 

that is not the issue, I would check the logs for any error messages related to authentication. If there are no error messages, I would investigate the application code to ensure that the authentication logic is working correctly.

Q: **Describe your experience in diagnosing and fixing software bugs.**
A: I have experience in diagnosing and fixing software bugs using various tools and techniques such as logging, debugging, and unit testing. I also follow best practices such as writing clean and maintainable code, reviewing code changes, and writing automated tests.

Q: **What tools do you typically use when troubleshooting technical issues?**

A: I typically use a combination of tools such as logs, monitoring tools, debugging tools, and performance profiling tools to troubleshoot technical issues.

1. **Communication and Customer Service:**

Q: **Describe your experience with customer service and customer support.**
A: I have experience in customer service and support, including handling customer inquiries, providing technical support, and resolving customer issues.

Q: **What methods do you use to effectively communicate technical issues to non-technical customers?**
A: I use clear and concise language when communicating technical issues to non-technical customers. I also use visual aids such as diagrams and screenshots to help explain technical concepts.

Q: **A customer reports that they are dissatisfied with the service they received. How would you handle this situation?**
A: I would first apologize for any inconvenience the customer experienced and listen to their concerns. I would then investigate the issue and work with the customer to find a satisfactory

solution. It is important to remain calm and professional in these situations and to always keep the customer''s needs in mind.

1. **Collaboration and Teamwork:**

Q: **Describe a time when you worked with a cross-functional team to solve a complex technical problem.**
A: In my previous role as a software engineer at a customer service technology company, I was part of a cross-functional team tasked with resolving a critical issue that was impacting the performance of our customer service application. The issue was causing significant delays in response times and was negatively impacting customer satisfaction.

Our team consisted of developers, quality assurance engineers, customer support specialists, and product managers from various departments within the company. We quickly realized that the issue was not just a technical issue but also a process issue that required changes to our workflows and protocols.

To address the issue, we organized regular cross-functional meetings to discuss the technical and process-related aspects of the problem and collaboratively brainstormed solutions. We conducted extensive research and analysis to identify the root cause of the issue and to determine the most effective course of action.

As a software engineer on the team, I was responsible for identifying and fixing the technical issues related to the application performance. I worked closely with the quality assurance engineers to diagnose the root cause of the issue and then implemented code changes to address the problem. I also worked with the customer support specialists to ensure that our solution was aligned with their workflows and customer needs.

After several weeks of collaboration and development, we were able to successfully resolve the issue and significantly improve the application''s performance. The response times were reduced, and the customer satisfaction scores improved as well.

Overall, this project was a great example of the importance of cross-functional teamwork and collaboration in resolving complex technical issues. By bringing together experts from different areas of the company and leveraging our collective knowledge and skills, we were able to develop a solution that improved the customer experience and met the needs of our business.

**How do you handle conflict brought on by working with people from different cultures?**

As a software engineer, I''ve had the opportunity to work with colleagues from diverse cultural backgrounds,

- **Respect and Embrace Differences:** The first step is to acknowledge and respect cultural differences. I try to learn about the culture of my colleagues and be respectful of their customs, norms, and values. I think it''s important to approach differences with an open mind and view them as an opportunity to learn and grow.
- **Effective Communication**: Communication is critical in any professional relationship, but it becomes even more important when working with people from different cultures. I make an effort to communicate clearly and concisely and avoid using colloquial language or slang that may not translate well. I also try to be an active listener and seek to understand my colleagues'' perspectives.
- **Seek to Understand and Compromise:** When conflicts do arise, I try to understand the root cause of the conflict and work with my colleagues to find a solution that works for everyone. Sometimes this may involve compromise, where we find a solution that incorporates elements of both cultures or comes up with a new approach that everyone can agree upon.
- **Collaboration and Respect:** I believe that collaboration and mutual respect are essential in working with colleagues from different cultures. By collaborating and respecting each other''s opinions and ideas, we can build strong and successful teams that benefit from diverse perspectives.

Overall, I try to approach conflicts with colleagues from different cultures with empathy, understanding, and a willingness to learn and grow. By doing so, I believe we can build more inclusive and productive teams that achieve great results.

**Tell about a time you did something innovative :**

During my time as a software engineer at my previous company, I was tasked with improving the performance of a **Java-based web application** that was experiencing some **slowdowns**. After conducting some research, I found that the bottleneck was in the **database layer**, where the application was **making multiple redundant queries to retrieve the same data**.

To address this issue, **I proposed a solution that involved implementing a caching mechanism that would store the frequently accessed data in memory**. I suggested using the **Java Caching System (JCS), which is a distributed, high-performance caching framework**, to implement this caching mechanism.

I worked with the development team to implement this solution, and we were able to significantly improve the performance of the application. The caching mechanism reduced the number of redundant database queries by caching frequently accessed data, resulting in faster response times and a more efficient use of system resources.

This solution was innovative in that it addressed a complex performance issue in a creative way, using a technology that was new to the team. It also demonstrated my ability to think critically and find efficient solutions to complex technical problems.

**Tell me about a time when you had a conflict with a co-worker.**

In my previous role as a software engineer, there was a time when I had a disagreement with one of my colleagues over the approach we should take to solving a particular technical challenge. My colleague and I both had strong opinions on the matter, and we couldn''t seem to reach a common consensus on the best way forward.

To address the conflict, **I suggested that we schedule a meeting with our team lead to discuss the issue and come up with a resolution that worked for everyone.** During the meeting, we were able to share our perspectives and identify areas of common ground. We also thought about alternative solutions that covered our proposed approaches.

Ultimately, we were able to find a solution that satisfied both of us and allowed us to move forward with the project. Looking back on the experience, **I learned that conflict resolution requires active listening, a willingness to compromise, and the ability to find creative solutions that address everyone''s concerns.** I''ve since made a conscious effort to cultivate these skills in all of my professional relationships.

**Text Based Adventures game:**

The objective of the game was for the player to navigate through a series of rooms, interacting with objects and battling enemies along the way. The game was designed to be text-based, with the player making choices by entering text commands.

To implement this game, I used several OOP concepts in Java, including inheritance, encapsulation, and polymorphism. I created a Player class and an Enemy class, both of which were inherited from a Character superclass. This allowed me to define common attributes and behaviors for all characters in the game.

I also used encapsulation to protect the internal state of objects, such as health points and attack damage and provided public methods for interacting with those attributes. This helped to ensure the integrity of the game mechanics and prevented the player from accessing or modifying attributes in unintended ways.

Finally, I used polymorphism for different types of food by eating them players can get different health points. Each food was implemented as a subclass of the Food class and overrode methods to define its own behavior.

Overall, this project was a great opportunity for me to apply OOP concepts in a practical way and develop my skills in Java programming. I learned a lot about the importance of designing flexible and maintainable code, as well as the benefits of using OOP principles to achieve those goals.

**What do you know about the Distributed Systems?**

Thank you for asking that question. Distributed systems are computer systems made up of multiple interconnected computers that work together to achieve a common goal. These systems are designed to improve performance, reliability, and scalability by distributing processing power and data across multiple nodes.

Distributed systems are used in a wide range of applications, including large-scale data processing, cloud computing, and distributed databases. Examples of distributed systems include Hadoop for distributed data processing, Apache Cassandra for distributed databases, and Kubernetes for container orchestration.

Designing and implementing distributed systems can be challenging due to issues such as network latency, consistency, fault tolerance, and security. To address these challenges, distributed systems often rely on algorithms and protocols such as the Paxos algorithm for consensus, the Raft protocol for replication, and the CAP theorem for trade-offs between consistency, availability, and partition tolerance.

Overall, distributed systems play an important role in modern computing, enabling large-scale processing, storage, and communication across a network of nodes. As a software developer, I understand the importance of designing and implementing distributed systems that are reliable, scalable, and secure, and I am excited about the challenges and opportunities that this field presents.

**how do you handle the conflict between different culture team members?**

Thank you for asking that question. While I haven''t had the opportunity to work with individuals from different cultures in a professional setting, I believe that empathy and open-mindedness are essential in handling conflicts that may arise.

Firstly, it is important to acknowledge that cultural differences exist and that they can manifest in various ways, such as communication styles, attitudes towards authority, and decision-making processes. By recognizing and respecting these differences, I believe that team members can foster an environment of mutual understanding and appreciation.

Additionally, active listening and effective communication are crucial in handling conflicts that may arise between team members from different cultures. This involves taking the time to understand each person''s perspective and working together to find common ground and solutions that are acceptable to all parties.

Finally, it may be beneficial to seek out training or resources on cultural competency to improve my understanding of different cultures and their practices. This can help to prevent misunderstandings and promote a culture of inclusivity and respect.

Overall, while I haven''t had direct experience working with individuals from different cultures in a professional setting, I am committed to maintaining an open-minded and empathetic approach in all of my interactions. I believe that by fostering a culture of inclusivity and respect, conflicts can be minimized, and teams can work more effectively towards their goals.

[Java Interview Questions:](Importent%20questions%20for%20interview%207d449ca673a34d5eb7b975ab4ef5952e/Java%20Interview%20Questions%207a47faab70c848568e75f5178daba52d.md)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(13, 'Fiserv API Integration', NULL, '# Fiserv API Integration

[https://chat.openai.com/share/13820a02-f37f-4260-97b6-20b9d27538d4](https://chat.openai.com/share/13820a02-f37f-4260-97b6-20b9d27538d4)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(14, 'Design HashMap', NULL, '# Design HashMap

A hashing collision **occurs when two different inputs produce the same hash value**.

 This can happen for various reasons, such as using a weak or flawed hashing algorithm, having a small hash space, or having a large number of inputs. 

### **Handling Collisions**

Handling collisions efficiently is crucial to maintain the operational speed of a hash table. There are several strategies to manage collisions:

1. **Chaining**: This is the method described in the custom **`MyHashMap`** example. In chaining, each bucket at a particular index starts a linked list (or a more sophisticated data structure). All entries mapping to the same index are stored in this list. Operations such as insertion, deletion, and retrieval involve searching through the list at the corresponding index.
2. **Open Addressing**: In open addressing, all elements are stored within the hash table itself. When a collision occurs, the hash table seeks the next available slot using a process called probing. Common probing techniques include:
    - **Linear Probing**: It places a new key in the next available bucket. This can lead to clustering, where a group of adjacent buckets gets filled up.
    - **Quadratic Probing**: It uses a quadratic polynomial (computed based on the number of attempts) to find an empty bucket, reducing clustering.
    - **Double Hashing**: It uses a second hash function to determine the interval between probes, offering high performance with less clustering.
3. **Rehashing**: This involves using a secondary hash function if the first results in a collision. This can be considered a hybrid technique or a specific strategy under open addressing depending on the implementation.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(15, 'Anti patterns➖', NULL, '# Anti patterns➖

Great! Let''s explore how some common anti-patterns can manifest in Java programming, specifically in the context of data structures, algorithms, and Spring Boot:

1. **God Object in Java**: In Java, a God Object might be a class that handles multiple responsibilities like database operations, business logic, and user interface logic. This violates the Single Responsibility Principle and makes the class difficult to maintain and test.
2. **Spaghetti Code in Data Structures and Algorithms**: When implementing algorithms or data structures in Java, spaghetti code can occur if you use excessive branching (like multiple nested **`if`** or **`switch`** statements), lack of method decomposition, and poor naming conventions. This makes the logic hard to follow and debug.
3. **Golden Hammer in Spring Boot**: This might involve using Spring Boot for every possible aspect of a project, even when simpler solutions would suffice. For example, using a full-blown Spring application for a task that could be solved with a simple script or a less complex framework.
4. **Premature Optimization in Algorithms**: This happens when you focus too much on optimizing your Java code for performance (like micro-optimizing loops or data structures) before you have identified actual performance bottlenecks through profiling.
5. **Lava Flow in Legacy Java Systems**: This is common in older Java systems where certain parts of the codebase are not understood but kept because they work. These sections often lack proper documentation and are written in outdated styles or practices.
6. **Copy and Paste Programming in Java**: This occurs when you duplicate code instead of creating reusable methods or classes. It''s a common temptation when working with similar functionalities, like handling similar types of exceptions in different places.
7. **Magic Numbers and Strings in Java**: Using hard-coded values in your Java code, like specific numeric values for loop limits or specific string values for error messages, without explaining their significance.
8. **Big Ball of Mud in Spring Boot Applications**: This can happen in Spring Boot when the application lacks clear layer separation (controller, service, repository), leading to tightly coupled classes and configurations that are hard to understand and maintain.

To avoid these anti-patterns, it''s important to adhere to best practices such as following SOLID principles, writing clean and maintainable code, using design patterns appropriately, and ensuring that your code is well-documented and tested.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(16, 'Linked List problems', NULL, '# Linked List problems :

[**Merge Two Sorted Lists**](https://leetcode.com/problems/merge-two-sorted-lists/)

```java
class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        ListNode head = new ListNode();
        ListNode curr = head;

        while(list1 != null && list2 != null){
            if(list1.val > list2.val){
                curr.next = list2;
                list2 = list2.next;
            }else {
                curr.next = list1;
                list1 = list1.next;
            }

            curr = curr.next;
        }
        if(list1 != null){
            curr.next = list1;
        }else{
            curr.next = list2;
        }

        return head.next;
        
    }
}
```

**Remove Linked List Elements:**

class Solution {

```java
class Solution {
    public ListNode removeElements(ListNode head, int val) {
		    // Create a temp node that points to the head
        ListNode temp = new ListNode();
        temp.next = head;
        
        // Use a current node to traverse the list, starting from the temp node
        ListNode curr = temp;
        
				// Traverse the list
        while(curr.next != null){
            if(curr.next.val == val){
                // Skip the node with the value to be removed
                curr.next = curr.next.next;
            }else{
		            // Move to the next node
                curr = curr.next;
            }
           
        }
        // Return the new head, which is the next node of the temp
        return temp.next;        
    }
}
```

[**Linked List Cycle**](https://leetcode.com/problems/linked-list-cycle/)

```java
public class Solution {
    public boolean hasCycle(ListNode head) {

        ListNode slow = head;
        ListNode fast = head;

        while(fast != null && fast.next != null){
            slow = slow.next;
            fast = fast.next.next;

            if(fast == slow){
                return true;
            }
        }

        return false;
         
      }
}
```

[**Reverse Linked List**](https://leetcode.com/problems/reverse-linked-list/)

```java
class Solution {
    public ListNode reverseList(ListNode head) {
       
        ListNode curr = head;
        ListNode prev = null;
        ListNode next = null;

        while(curr != null){
            next = curr.next;
           curr.next = prev;
            prev = curr;
            curr = next;

        }

        return prev;
        
    }
}
```

[**Palindrome Linked List**](https://leetcode.com/problems/palindrome-linked-list/)

```java

```

[**Middle of the Linked List**](https://leetcode.com/problems/middle-of-the-linked-list/)

```java
class Solution {
    public ListNode middleNode(ListNode head) {
        ListNode slow = head, fast = head;

        while(fast != null && fast.next != null){
            slow = slow.next;
            fast = fast.next.next;
        }

        return slow;
    }
}
```

[**Remove Duplicates from Sorted List**](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

```java
class Solution {
    public ListNode deleteDuplicates(ListNode head) {
       
        ListNode curr = head;
       
        while(curr != null && curr.next != null){
            if(curr.val != curr.next.val){
                curr = curr.next;
            }else{
                curr.next = curr.next.next;
            }
        }
        return head;
    }
}
```

[**Intersection of Two Linked Lists**](https://leetcode.com/problems/intersection-of-two-linked-lists/)

```java
public class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        if(headA == null || headB == null) return null;

        ListNode a = headA;
        ListNode b = headB;

        while(a != b){
            if(a == null){
                a = headB;
            }else{
                a = a.next;
            }
            b = (b==null) ? headA : b.next;
        }

        return a;
    }
}
```', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(17, 'Spring Framework (depth)', NULL, '# Spring Framework (depth):

**Dependency Injection or IoC :**

**Spring IoC (Inversion of Control) Container is the core of Spring Framework. It creates the objects, configures and assembles their dependencies, manages their entire life cycle. The Container uses Dependency Injection(DI) to manage the components that make up the application.**

IoC is also known as *dependency injection* (DI). It is a process whereby objects define dependencies, that is, the other objects they work with, only through constructor arguments, arguments to a factory method, or properties that are set on the object instance after it is constructed or returned from a
factory method. The container then *injects* those dependencies when it creates the bean. This process is fundamentally the inverse, hence the name *Inversion of Control* (IoC), of the bean itself controlling the instantiation or location of its dependencies by using direct construction of classes,

The `org.springframework.beans` and `org.springframework.context` packages are the basis for  Spring Framework''s IoC container. The [`BeanFactory`](http://static.springsource.org/spring-framework/docs/current/javadoc-api/org/springframework/beans/factory/BeanFactory.html) interface provides an advanced configuration mechanism capable of managing any type of object.[`ApplicationContext`](http://static.springsource.org/spring-framework/docs/current/javadoc-api/org/springframework/context/ApplicationContext.html) is a sub-interface of `BeanFactory.` It adds easier integration with Spring''s AOP features; message resource handling (for use in internationalization), event publication; and application-layer specific contexts such as the `WebApplicationContext` for use in web applications.

In short, the `BeanFactory` provides the configuration framework and basic functionality, and the  `ApplicationContext` adds more enterprise-specific functionality. The  `ApplicationContext` is a complete superset of the `BeanFactory`, and is used exclusively in this chapter in descriptions of Spring''s IoC container.

**Bean:**

In Spring, **the objects that form the backbone of your application and that are managed by the Spring IoC *container* are called *beans*. A bean is an object that is instantiated, assembled, and otherwise managed by a Spring IoC container.** Otherwise, a bean is simply one of many objects in your application.  Beans, and the *dependencies* among them, are reflected in the *configuration metadata* used by a container.

## Differences Between Spring and Spring Boot

| **Basis** | **Spring** | **Spring Boot** |
| --- | --- | --- |
| • Use | For building or developing applications, the Spring framework is considered to be the most widely used Java EE  framework. | For developing REST APIs Spring Boot framework is widely used. |
| • Advantage | Developers have become more productive as this framework has made Java EE development is simple. | It is the easiest framework for developing web applications as the code length is reduced when using this framework. |
| • Key or Primary Feature | Dependency Injection | Autoconfiguration: Based on the requirement, the classes are automatically configured by Spring Boot. |
| • Developing   Applications | This framework helps make things simpler by allowing us to build loosely coupled applications. | Stand-alone applications can be built using this Spring Boot framework with minimal or fewer configurations. |
| • Boilerplate Code | For doing a minimal task, the developer needs to write a huge amount of code or, more specifically, boilerplate code. | The boilerplate code is reduced to an extent if we use Spring Boot. |
| • Server | The server needs to be set up explicitly  for the testing purpose of the Spring Project. | Embedded servers like Jetty, Tomcat, etc., are offered by the Spring Boot framework. |
| • Database | This framework does not provide in-memory database support. | It offers several plugins for working with an embedded and in-memory database such as H2. |
| • Dependencies | In pom.xml, the dependencies of our Spring project are manually defined by the developers. | There is a concept of starter in the pom.xml file of our Spring Boot 
which is used for internally taking care of downloading Dependency JARs 
based on the Spring Boot Requirement. |
| • Need of Deployment Descriptor | Deployment descriptor is required for running Spring applications. | Deployment descriptor is not required for Spring Boot. |
| • Configurations | In the Spring framework, the configurations need to be built manually. | For Spring Boot, there are default configurations for which faster bootstrapping is allowed. |
| • Testing | Due to a large amount of source code, testing in Spring is more difficult than testing in Spring Boot. | Due to the reduced amount of code, testing is easier in Spring Boot. |
| • XML Configuration | In Spring, [XML](https://www.simplilearn.com/tutorials/programming-tutorial/what-is-xml) configuration is required. | In Spring Boot, XML configuration is not required. |
| • Plugins | No plugin is provided by the Spring framework. | For Maven and Gradle build tool, plugins are provided by the Spring 
Boot. The plugins provide various features, including  the packaging of 
the executable jars. |
| • CLI Tools | For developing and testing applications, no CLI tool is provided by Spring Framework. | Spring Boot provides the CLI tool for developing and testing applications. |
| • HTTP Authentication | HTTP authentication enables security authentication. Several 
configurations and dependencies are needed to enable security. The 
standard dependencies spring-security-config and spring-security-web are
 required to set up security in the application.
For the next step, a class that extends WebSecurityConfigurerAdapter needs to be added. | Only the dependency of spring-boot-starter-security is needed to be 
defined because all the relevant dependencies will be automatically 
added to the classpath. |

Now let us discuss some of the primary differences between Spring Boot and Spring MVC.

| **Basis** | **Spring Boot** | **Spring MVC** |  |  |
| --- | --- | --- | --- | --- |
| Definition | Spring Boot is considered a module of the Spring framework for packaging the Spring-based application with sensible defaults. | Spring MVC is considered to be the model view controller-based web framework under the Spring framework. |  |  |
| Use | For building a Spring-powered framework, default configurations are provided by it. | For building web applications, ready-to-use features are provided by it. |  |  |
| Configurations | Developers do not need to build the configurations manually. | In Spring MVC, the configurations are required to be built manually. |  |  |
| Dependencies | The boilerplate code is avoided, and the dependencies are wrapped together in a single unit. | Each dependency is specified separately by it. |  |  |
| Deployment Descriptor | A deployment descriptor is not required in the case of Spring Boot. | A deployment descriptor is required in the case of Spring MVC. |  |  |
| Required time | It is very efficient to use. The development time is reduced with 
this framework, thereby increasing the productivity of engineers. | In the case of Spring MVC, much more time is required for achieving the same. |  |  |
| Processing | Powerful batch processing is  provided by it. | Powerful batch processing is not provided by it. |  |  |
| Layers and Components | There are four types of presentation layers:  Presentation layer, Business layer, Persistence layer, and the Database layer. | There are four components in MVC such as Model, View, Controller, Front Controller, or DispatcherServlet Class. |  |  |
| Development | Along with dynamic web pages and RESTFUL web services, Spring Boot can also develop other applications. | Dynamic web pages and RESTFUL web services are developed using Spring MVC. |  |  |
|  |  |  |  |  |

![Untitled](Spring%20Framework%20(depth)%2080f182c29f07467bb0e7b2929c1bb093/Untitled.webp)

**What is the use of Profiles in spring boot?**

While developing the application we deal with multiple environments such as dev, QA, Prod, and each environment requires a different configuration. 

For eg., we might be using an embedded H2 database for dev but for prod, we might have proprietary Oracle or DB2. Even if DBMS is the same across the environment, the URLs will be different.

Spring Profiles **provide a way to segregate parts of your application configuration and make it be available only in certain environments**. 

**What is Spring Actuator? What are its advantages?**

An actuator is an additional feature of Spring that helps you to monitor and manage your application when you push it to production. These actuators include auditing, health, CPU usage, HTTP hits, and metric gathering, and many more that are automatically applied to your application.

### What is dependency Injection?

The process of injecting dependent bean objects into target bean objects is called dependency injection.

- Setter Injection: The IOC container will inject the dependent bean object into the target bean object by calling the setter method.
- Constructor Injection: The IOC container will inject the dependent bean object into the target bean object by calling the target bean constructor.
- Field Injection: The IOC container will inject the dependent bean object into the target bean object by Reflection API.

### Explain @RestController annotation in Spring boot?

It is a combination of @Controller and @ResponseBody, used for creating a restful controller. It converts the response to JSON or XML. It ensures that data returned by each method will be written straight into the response body instead of returning a template.

### How to disable a specific auto-configuration class?

You can use exclude attribute of @EnableAutoConfiguration if you want auto-configuration not to apply to any specific class.

```java
//use of exclude
@EnableAutoConfiguration(exclude={className})
```

**what are beans in spring?**

In the Spring Framework, a bean is an object that is managed by the Spring IoC (Inversion of Control) container. Beans are the backbone of a Spring application and represent the components that form the basis of your application''s logic. 

A bean is simply a Java object that is instantiated, assembled, and otherwise managed by a Spring IoC container.

**Q) What is Spring Boot and mention the need for it?**

Spring Boot is a Spring module that aims to simplify the use of the Spring framework for Java development. It is used to create stand-alone Spring-based applications that you can just run. So, it basically removes a lot of configurations and dependencies. Aiming at the Rapid Application Development, Spring Boot framework comes with the auto-dependency resolution, embedded HTTP servers, auto-configuration, management endpoints, and [Spring Boot CLI](https://www.edureka.co/blog/spring-boot-setup-helloworld-microservices-example/).

So, if you ask me why should anybody use Spring Boot, then I would say, Spring Boot not only improves productivity but also provides a lot of conveniences to write your own business logic.

Q) **What are annotations?**

Spring Boot Annotations are ***a form of metadata that provides data about a spring application***. 

**Q) @ConditionalOnClass Annotation and @ConditionalOnMissingClass Annotation**

@ConditionalOnClass Annotation used to mark auto-configuration bean if the class in the annotation’s argument is present/absent.

### **Example:**

`@Configuration`

`@ConditionalOnClass(MongoDBService.class)`

`class` `MongoDBConfiguration {`

`// Insert code here`

`}`

---

### **@ConditionalOnBean Annotation and @ConditionalOnMissingBean Annotation**

These annotations are used to let a bean be included based on the presence or absence of specific beans.

### **Example:**

`@Bean`

`@ConditionalOnMissingBean(type = "JpaTransactionManager")`

`JpaTransactionManager jpaTransactionManager(`

`EntityManagerFactory entityManagerFactory)`

`{`

`// Insert code here`

`}`

---

### **@ConditionalOnProperty Annotation**

These annotations are used to let configuration be included based on the presence and value of a Spring Environment property.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(18, 'Design LinkedList', NULL, '# Design LinkedList

```java
class MyLinkedList {
    Node head;
    int length;

    public class Node{
        int val;
        Node next;

        Node(int val){
            this.val = val;
        }
    }

    public MyLinkedList() {
         this.head = null;
         this.length = 0;
    }
    
    public int get(int index) {
        if(index >= length) return -1;

        int count =0;
        Node curr = head;
        while(count<index){
            count++;
            curr = curr.next;
        }
        return curr.val;
    }
    
    public void addAtHead(int val) {
        Node newNode = new Node(val);
        newNode.next = head;
        head = newNode;
        length++;
        
    }
    
    public void addAtTail(int val) {
        if(head == null){
            addAtHead(val);
        }else {
            Node curr = head;
            while(curr != null){
                curr.next = curr;
                Node newNode = new Node(val);
                curr.next.next = newNode;
                length++;
            }
        }
    }
    
    public void addAtIndex(int index, int val) {
        if(index >length){
            return;
        }
        if(index ==0) addAtHead(val);

        else {
            int count = 1;
            Node curr = head;
            while(count < index){
                curr = curr.next;
                count++;
            }

            Node newNode = new Node(val);
            Node next = curr.next;
            curr.next = newNode;
            length++;
        }
        
    }
    
    public void deleteAtIndex(int index) {
        if(index >= length) return;
        if(index == 0){
            head = head.next;
            length--;
        }
        else {
            int count = 1;
            Node curr = head;
            while(count < index){
                count++;
                curr = curr.next;
            }

            curr.next = curr.next.next;
            length--;
        }
    }
}
```', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(19, 'About sprint', NULL, '# About sprint

### **Week 1: Sprint Planning and Start**

### Daily Activities:

1. **Daily Stand-up Meeting (10-15 minutes):** Quick updates on what was done the previous day, plan for the current day, and any blockers.
2. **Code Development:**
    - Working on assigned tasks, which could include writing new code, refactoring existing code, or fixing bugs.
    - Pair programming with a more experienced developer for complex tasks or learning purposes.
3. **Learning and Research:**
    - Understanding the technology stack and the project requirements.
    - Researching best practices and solutions for assigned tasks.
4. **Team Collaboration:**
    - Discussing technical challenges and solutions with team members.
    - Participating in code reviews to learn from others'' code and provide feedback.

### **Week 2: Mid-Sprint**

### Daily Activities:

1. **Daily Stand-up Meeting:**
2. **Code Development:**
    - Continuation of coding tasks.
    - Writing unit tests for the code developed.
3. **Learning and Integration:**
    - Integrating the developed features/modules with other parts of the application.
    - Learning about the deployment process and the CI/CD pipeline.
4. **Documentation:**
    - Writing or updating documentation for the developed features.

### **Week 3: Sprint Review and Retrospective**

### Daily Activities:

1. **Daily Stand-up Meeting:**
2. **Finishing Touches on Development:**
    - Finalizing code development.
    - Ensuring all tests pass.
    - Conducting peer reviews.
3. **Sprint Review Preparation:**
    - Preparing to showcase the work done in the sprint to stakeholders.
    - Gathering feedback from QA and incorporating it into the code.
4. **Sprint Retrospective:**
    - Participating in the retrospective meeting to discuss what went well, what didn''t, and how to improve in the next sprint.

### Additional Responsibilities:

- **Self-learning and Up-skilling:** Continuously learning new technologies and methodologies relevant to their role.
- **Collaboration and Communication:** Regularly communicating with the team lead and other team members to ensure alignment with the sprint goals and addressing any issues or concerns.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(20, 'IBM Software Developer (Feb 5, 2025)', NULL, '# IBM Software Developer (Feb 5, 2025)

## **Job Description**➖

### Your role and responsibilities

As a Developer at IBM Ireland, you will:

- Be involved in Development Design and build robust microservices and APIs using Java, driving the next generation of our hybrid cloud management products.
- Work at the heart of our technology ecosystem, ensuring that our development and operational processes are seamless, efficient and scalable through pipeline automation. If you are passionate about making processes faster and more efficient, this is the area for you.
- If you have keen eye for detail and a passion for quality, a love for uncovering hidden issues, we have roles that will meet your curiosity and detective skills.
- You have a strong passion for modern software development using languages such as Java, Python, JavaScript, Go etc. and a keen interest and/or understanding of web applications, Generative AI and cloud technologies.
- You are at your best when working with the best. You love mentoring and being mentored and always willing to learn new skills/technologies for you and your colleagues.
- You are a proactive problem-solver who takes initiative and thrives in a fast-paced, dynamic setting.

Required education

Bachelor''s Degree

Preferred education

Bachelor''s Degree

Required technical and professional expertise

- Some experience in software development roles & projects.
- Sharing knowledge and working in teams.
- Delivering/driving innovation cross your project/teams.

Preferred technical and professional experience

- Experience with algorithms, data structures, GenerativeAI/LLMs
- Experience with Container technologies (Docker, Kubernetes), and microservices
- Experience of working with Cloud technologies (IBM Cloud, AWS, Azure etc)
- Experience of working with CI/CD processes, DevOps technologies and tooling such as git, Jenkins, Tekton
- Experience of Kafka, Cassandra and Postgres technologies
- Familiarity with test automation frameworks

TIPS: 

Focus on data structures:

for eg⇒ “when would you rather use data structure A over data structure B?”', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(21, 'Failure cases in API gateway use Java spring boot', NULL, '# Failure cases in API gateway use Java spring boot

[https://medium.com/@alsigitguntoro/failure-cases-in-api-gateway-use-java-springboot-5adcd35d9db1](https://medium.com/@alsigitguntoro/failure-cases-in-api-gateway-use-java-springboot-5adcd35d9db1)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(22, 'AWS vs Kubernetes', NULL, '# AWS vs Kubernetes

Comparing Kubernetes functionalities to their AWS equivalents requires understanding both Kubernetes'' architecture and the range of services offered by AWS. Here''s a basic mapping:

1. **Pods vs. EC2 Instances**:
    - **Kubernetes Pods**: A Pod is the smallest deployable unit in Kubernetes, often containing one or more containers that share resources.
    - **AWS EC2 Instances**: An EC2 instance is a virtual server in AWS''s Elastic Compute Cloud for running applications.
    - **Comparison**: While both Pods and EC2 Instances are fundamental units, they''re not direct equivalents. Pods are more ephemeral and often used to host microservices, whereas EC2 instances are virtual machines that can run anything, including Kubernetes.
2. **Deployments/ReplicaSets vs. Auto Scaling Groups (ASG)**:
    - **Kubernetes Deployments/ReplicaSets**: These manage the deployment and scaling of a set of Pods, ensuring that a specified number of Pods are running.
    - **AWS Auto Scaling Groups**: ASGs maintain the desired count of EC2 instances and can automatically scale in or out based on specified criteria.
    - **Comparison**: Both manage the scaling and desired state of compute units (Pods or EC2 instances), but Deployments/ReplicaSets are more focused on the deployment and management of containerized applications.
3. **Services vs. Elastic Load Balancers (ELB)**:
    - **Kubernetes Services**: A Service in Kubernetes is an abstraction which defines a logical set of Pods and a policy to access them, often via a network service.
    - **AWS Elastic Load Balancers**: ELB distributes incoming application traffic across multiple targets, such as EC2 instances.
    - **Comparison**: Both provide a way to expose applications to traffic, but Kubernetes Services are more about connecting services within a cluster, whereas ELBs are about balancing external traffic.
4. **Ingress vs. AWS API Gateway/Application Load Balancer**:
    - **Kubernetes Ingress**: Manages external access to the services in a cluster, typically HTTP.
    - **AWS API Gateway/Application Load Balancer**: Used for routing and managing incoming HTTP(s) traffic.
    - **Comparison**: Both Ingress and AWS API Gateway/ALB handle HTTP routing, but Ingress is specific to the traffic routing within a Kubernetes cluster.
5. **Persistent Volumes (PV) and Persistent Volume Claims (PVC) vs. Elastic Block Store (EBS)**:
    - **Kubernetes PV and PVC**: Persistent storage methods in Kubernetes.
    - **AWS Elastic Block Store (EBS)**: Provides block-level storage volumes for persistent data storage with EC2 instances.
    - **Comparison**: PV and PVC in Kubernetes are abstractions for storage in cluster, similar to how EBS provides storage for EC2 instances.
6. **ConfigMaps/Secrets vs. AWS Systems Manager Parameter Store/Secrets Manager**:
    - **Kubernetes ConfigMaps/Secrets**: Used for managing configuration data and sensitive information in Kubernetes.
    - **AWS Systems Manager Parameter Store/Secrets Manager**: Services for managing configuration data and secrets in AWS.
    - **Comparison**: Both are used for storing configuration data and secrets, but the AWS solutions offer more integration with other AWS services and higher scalability outside of Kubernetes.
7. **Kubernetes Nodes vs. EC2 Instances**:
    - **Kubernetes Nodes**: A node is a worker machine in Kubernetes and may be a VM or a physical machine.
    - **AWS EC2 Instances**: As mentioned, these are virtual servers in AWS.
    - **Comparison**: In a Kubernetes cluster on AWS, the nodes are typically EC2 instances.

Remember, this comparison is not exact. Kubernetes is primarily an orchestration system for containerized applications, while AWS provides a broader range of cloud computing services. Kubernetes can run on top of AWS, leveraging many of these AWS services to manage and scale applications.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(23, 'Reading List', NULL, '# Reading List

<aside>
📚 The modern day reading list includes more than just books. We''ve created a dashboard to help you track books, articles, podcasts, and videos. **Each** **media type** has its own view based on the **Type** property. 

Change your views to sort content by status, author, type, or publisher ✓
Rate content out of 5 stars ✓

</aside>

<aside>
✂️ One more thing... if you install [Notion Web Clipper](https://chrome.google.com/webstore/detail/notion-web-clipper/knheggckgoiihginacbkhaalnibhilkk?hl=en), you can save pages and links off the web directly to these lists.

</aside>

<aside>
👇 Click on `Articles` to see what other views might have in store or add your own ✨

</aside>', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(24, 'Databses', NULL, '# Databses :

![image.png](Databses%20ef5f0c79b67640f995813e8b2c1437a7/image.png)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(25, 'Before interview➖', NULL, '# Before interview➖

**Why should we hire you?**

Because I am a passionate Software Developer, I believe my dedication to continuous learning makes me a good fit for this role. and I also like programming and I like to explore different technologies as I have mentioned in my CV like RabbitMQ, there I wanted to learn how exchanging messages works so I did a small terminal-based chat application. and also I have hands-on experience working in the development of Java applications with the frameworks like Spring-boot. and also I have OCA certification, which that shows here I have a good understanding of Java programming concepts. 

.**What innovation did you do?**

Regarding Innovation, recently I was working on one of my personal projects which is recipe sharing platform, during its development, I got to know that, I need to store recipes in a document format. so I was exploring databases then I thought of using MongoDB for the database, it’s a NoSQL database and also flexible and scalable. By embracing MongoDB, I not only gained a valuable tool for efficiently storing and managing recipe data but also expanded my skill set.

**What challenges did you face?**

In my previous job, I was a junior software developer so I never had practical experience working with APIs there I faced a challenge when I was working with a view-all customer end-point I got an error in the terminal called StackOverFlowError After doing some research I got know that I can do it in two ways, one is by adding a limit to the query and second is by doing pagination in spring-boot. That’s how I successfully resolved the error.

**Diverse culture team:**

Growing up in a country with a lot of diversity, I have experience working with diverse teams. I believe that when collaborating with such a team, we should be open-minded, should respect each other, and should understand each other''s perspectives. I think a diverse team that has an inclusive culture will bring a wide range of viewpoints, innovation, and creativity to the table.

**Where do I see myself in a few years within the company?**

"I''m excited about the opportunity to contribute to this company''s growth and success. In the next few years, I see myself taking on more significant responsibilities and making a substantial impact. I aim to continue developing my skills and expertise in my current role while also exploring opportunities for growth and leadership within the organization. My goal is to not only meet but exceed the expectations of my current position and to contribute to the company''s continued success. I''m open to taking on new challenges, working collaboratively with colleagues, and remaining adaptable to the evolving needs of the company. Ultimately, I aspire to be a valuable asset to the team and play a role in the company''s long-term achievements.”

In simple words➖

In a few years, I see myself growing within the company. I want to take on more important roles and responsibilities, learn and improve in my current position, and become a key part of the team''s success. I''m open to new challenges and eager to help the company achieve its long-term goals.

**for strength:**

"I’d say one of my strengths is that I really enjoy learning new technologies. Recently, I wanted to get more familiar with DevOps and cloud, so I decided to take on a project where I used microservices, Docker, and Kubernetes. It was a great way to get hands-on experience and see how everything fits together in a real-world scenario. I’m always curious and excited to pick up new skills, and I think that’s what helps me stay up to date with the latest tech.”

**for weakness:**

"A weakness I’ve noticed is that I sometimes lack confidence in my skills because I haven’t had much experience working in a professional setup. While I’ve learned a lot through personal projects and self-study, I know that working in a structured environment with experienced professionals will help me improve and gain more confidence. I’m eager to work in a professional setting where I can continue learning and refining my abilities.”

**Describe a time when you received constructive criticism or negative feedback. How did you handle it, and how did it influence your work going forward?**

"During a project, my manager gave me feedback that my code, while functional, wasn’t as readable as it could be for the rest of the team. At first, it was tough to hear because I thought I had done a good job, but I realized they were right. I took the feedback as an opportunity to improve. I started paying more attention to writing cleaner, more organized code, using better naming conventions, and adding clear comments. I also reviewed best practices and asked for feedback more often. As a result, my work became easier for others to understand and maintain, and it improved collaboration within the team.”

**what challenges did you face?** 

1. Tell me about a time you made a mistake at work. How did you handle it?
2. Describe a situation where you faced a major challenge or setback. How did you overcome it?
3. Can you share a time when you had to stay calm under pressure? How did you handle the situation?
4. Tell me about a time you learned something important from a mistake. How did it change your approach to work?
5. Describe a time when you had to solve a problem quickly. What steps did you take?

A challenge I faced in this situation was the initial panic and pressure when we discovered that I had accidentally deleted all the tables in the database. Since it was a shared development environment, I knew this could seriously impact the entire team''s work. The stress of finding a quick solution while worrying about potential data loss was overwhelming. However, I had to remain calm and focused. After doing some research, I found that we had backups enabled, which was a huge relief. The experience taught me the importance of handling mistakes professionally and making sure we always have proper safeguards like backups in place to prevent future incidents.”

**Java :**

**Multithreading :**

In [Java](https://www.mygreatlearning.com/academy/learn-for-free/courses/java-programming/?gl_blog_id=35562), Multithreading refers to a process of executing two or more threads simultaneously for maximum utilization of the CPU.

Multithreading and Multiprocessing are used for multitasking in Java, but we prefer multithreading over multiprocessing. This is because the threads use a shared memory area which helps to save memory, and also, the content-switching between the threads is a bit faster than the process.

**Thread Safe:**

[**synchronized](https://www.geeksforgeeks.org/synchronized-in-java/)** keyword is used to make the class or method thread-safe which means 
only one thread can have a lock of synchronized method and use it, other 
threads have to wait till the lock releases and any one of them acquire 
that lock.

**DeadLock:**

*A **deadlock*** is a situation where a set of processes are blocked because each process is holding a resource and waiting for another resource acquired by some other process.

Certainly! Here are the answers to the interview questions on threads and multithreading in Java:

1. **What is a thread in Java?**
    - A thread in Java represents a separate flow of execution within a program. It allows for the concurrent execution of tasks and enables multitasking.
2. **How can you create a thread in Java?**
    - You can create a thread in Java by either extending the `Thread` class or implementing the `Runnable` interface. By extending `Thread`, you override the `run()` method with the task to be executed. Implementing `Runnable` requires implementing the `run()` method and passing the `Runnable` instance to a `Thread` object.
3. **What is the difference between extending the `Thread` class and implementing the `Runnable` interface for creating a thread?**
    - When extending the `Thread` class, you create a new class that is a subclass of `Thread` and override the `run()` method. By implementing the `Runnable` interface, you create a separate class that implements `Runnable` and then pass an instance of it to a `Thread` object. Implementing `Runnable` is generally considered more flexible and recommended over extending `Thread` as it allows for better separation of concerns.
4. **Explain the concept of thread synchronization and why it is important.**
    - Thread synchronization is the mechanism used to coordinate the execution of multiple threads to ensure data consistency and prevent race conditions. It involves using techniques like `synchronized` blocks or methods to control access to shared resources or critical sections of code. Thread synchronization is important to avoid conflicts and maintain data integrity when multiple threads access and modify shared data simultaneously.
5. **What is the `synchronized` keyword in Java? How does it work?**
    - The `synchronized` keyword in Java is used to create synchronized blocks or methods. It ensures that only one thread can access the synchronized block or method at a time, preventing concurrent access and potential data corruption. When a thread enters a synchronized block, it acquires the intrinsic lock associated with the object or class. Other threads attempting to enter the same synchronized block will be blocked until the lock is released.
6. **What is the purpose of the `volatile` keyword in Java?**
    
     **Volatile Keyword**: The **`volatile`** keyword is used with variables in Java to address this visibility problem. When a variable is declared as volatile, it tells the JVM (Java Virtual Machine) that the variable can be accessed by multiple threads and that it should not be cached locally. Instead, every read and write operation on this variable is done directly from and to the main memory. This ensures that any change made to a volatile variable by one thread is immediately visible to other threads.
    
    - The `volatile` keyword in Java is used to declare a variable whose value might be modified by multiple threads. It ensures that changes made to the variable are immediately visible to all threads, preventing caching of the variable''s value in CPU registers or thread-local caches. The `volatile` keyword is useful for ensuring consistent and synchronized access to shared variables across threads.
7. **Explain the difference between `wait()`, `notify()`, and `notifyAll()` methods in Java''s inter-thread communication.**
    - `wait()`: Causes the current thread to wait until another thread invokes `notify()` or `notifyAll()` on the same object. The thread releases the lock and remains in a waiting state until notified.
    - `notify()`: Wakes up a single thread that is waiting on the same object. If multiple threads are waiting, only one of them is chosen to be awakened.
    - `notifyAll()`: Wakes up all threads waiting on the same object. All waiting threads are notified and can compete for the lock to continue execution.
8. **What is a race condition, and how can it occur in multithreaded programs?**
    - A race condition occurs when multiple threads access shared resources concurrently, resulting in unpredictable and incorrect behavior. Race conditions can lead to data inconsistencies and bugs. They can occur when threads perform operations on shared data without proper synchronization, leading to interleaved or inconsistent execution.
9. **How does thread pooling work, and what are the benefits of using it?**
    - Thread pooling involves creating a fixed number of threads in a pool and reusing them to execute tasks. Instead of creating and destroying threads for each task, thread pooling allows for efficient thread management. The benefits of thread pooling include reducing thread creation overhead, better resource utilization, and improved scalability by limiting the number of active threads.
10. **What is the `join()` method in Java threads? How does it work?**
    - The `join()` method in Java is used to wait for a thread to complete its execution. When called on a thread, it causes the calling thread to pause execution until the target thread finishes. This allows for synchronization and coordination between threads, ensuring that one thread waits for another to complete before continuing.
11. **How can you handle exceptions in multithreaded programs?**
    - In multithreaded programs, exceptions can be handled by using a try-catch block within the `run()` method of a thread or by implementing an `UncaughtExceptionHandler`. Alternatively, you can wrap the `run()` method code in a `try-catch` block and handle exceptions locally within the thread. It''s important to handle exceptions properly to avoid abrupt termination of threads and potential resource leaks.
12. **Explain the concept of deadlock and how it can occur in concurrent programming.**
    - Deadlock occurs when two or more threads are blocked, waiting for each other to release resources that they hold. It results in a situation where no thread can make progress. Deadlocks can occur when multiple threads acquire locks on shared resources in different orders, creating a circular dependency that prevents any thread from proceeding.
13. **What are the different thread states in Java? Explain each state.**
    - The different thread states in Java are:
        - `NEW`: The thread is in the process of being created.
        - `RUNNABLE`: The thread is ready to run or is running.
        - `BLOCKED`: The thread is blocked, waiting for a lock or monitor.
            - `WAITING`: The thread is waiting for a specific condition to occur.
        - `TIMED_WAITING`: The thread is waiting for a specific condition for a specific amount of time.
        - `TERMINATED`: The thread has completed execution and has terminated.
14. **What is the purpose of the `yield()` method in Java threads?**
    - The `yield()` method is used to voluntarily give up the CPU by the currently executing thread and allow other threads of the same priority to run. It is a hint to the scheduler that the current thread is willing to yield its current time slice to other threads.
15. **How can you achieve thread safety in Java?**
    - Thread safety in Java can be achieved by using techniques such as synchronization (`synchronized` keyword), using thread-safe data structures, implementing atomic operations with the `Atomic` classes, and using concurrent collections from the `java.util.concurrent` package. Additionally, avoiding shared mutable state and immutable objects can help prevent data inconsistencies and ensure thread safety.
    
    **q) what are the different types of thread?**
    
    ### **User Threads vs. Daemon Threads:**
    
    ### User Threads:
    
    - **Definition:** These are high-priority threads that the JVM will wait for to complete before terminating the application.
    - **Characteristics:** User threads are meant for tasks that must be executed fully for the application to function correctly.
    - **Example:** A main thread or a worker thread that processes important tasks.
    
    ### Daemon Threads:
    
    - **Definition:** These are low-priority threads that run in the background and provide services to user threads.
    - **Characteristics:** JVM does not wait for daemon threads to finish before exiting. They are used for background supporting tasks.
    - **Example:** Garbage Collector (GC), background tasks like monitoring or logging.
    - **Creation:** `thread.setDaemon(true);`
    
    ### **What are the tasks of the** **start() method?**
    
    The primary task of the *start() method* is to **register the thread** with the thread scheduler, so one can tell what child thread should perform, when, and how it will be scheduled that is handled by the **thread scheduler**. The secondary task is to call the corresponding run() method got the threads.
    
    The `start()` method changes the state of the thread from "new" (unstarted) to "runnable".
    

**Exceptions :**

Certainly! Here are the answers to the interview questions on exceptions in Java:

1. **What is an exception in Java?**
    - An unexpected event occurs during program execution. It affects the flow of the program instructions which can cause the program to terminate abnormally.
2. **Explain the difference between checked and unchecked exceptions in Java.**
    - Checked exceptions are exceptions that need to be declared in the method signature or handled using a `try-catch` block. Examples include `IOException` and `SQLException`. Unchecked exceptions, on the other hand, are not required to be declared or caught explicitly. They inherit from `RuntimeException` and its subclasses, such as `NullPointerException` and `ArrayIndexOutOfBoundsException`.
3. **What is the purpose of the `try-catch` block in exception handling?**
    - The `try-catch` block is used to catch and handle exceptions in Java. The code within the `try` block is monitored for any exceptions, and if an exception occurs, it is caught by the corresponding `catch` block where you can provide the appropriate error handling or recovery logic.
4. **How can you handle exceptions in Java without using a `try-catch` block?**
    - Exceptions can be handled without using a `try-catch` block by declaring the exception using the `throws` keyword in the method signature. This transfers the responsibility of handling the exception to the calling method or propagates it up the call stack.
5. **What is the difference between `finally` and `final` in Java?**
    - `finally` is a block of code that is executed regardless of whether an exception is thrown or not. It is used to perform cleanup operations or release resources. `final` is a keyword used to declare variables, methods, or classes that cannot be modified or extended.
6. **What is the difference between `throw` and `throws` in Java?**
    - `throw` is used to explicitly throw an exception within a method or block of code. `throws` is used in a method signature to declare the exceptions that the method can throw, indicating that the caller must handle or propagate those exceptions.
7. **Explain the concept of exception propagation in Java.**
    - Exception propagation refers to the process of propagating an exception from one method to another or from one block of code to another until it is caught and handled. When an exception is thrown, the calling method or the next higher-level `catch` block is responsible for handling or propagating the exception further.
8. **What is the purpose of the `finally` block in exception handling?**
    - The `finally` block is used to specify code that should be executed regardless of whether an exception occurs or not. It is commonly used for cleanup operations, such as closing resources, releasing locks, or finalizing operations.
9. **What is the difference between `NullPointerException` and `ArrayIndexOutOfBoundsException`?**
    - `NullPointerException` occurs when you try to access or invoke a method on a null object reference. `ArrayIndexOutOfBoundsException` occurs when you try to access an array element using an invalid index, such as an index that is negative or exceeds the size of the array.
10. **How can you create custom exceptions in Java?**
    - Custom exceptions can be created by extending the `Exception` class or one of its subclasses. By creating a new class that inherits from `Exception`, you can define your own exception type with custom properties and behaviors.
11. **What is the role of the `Exception` class in the exception hierarchy?**
    - The `Exception` class is the superclass for all exceptions in Java. It provides a common base class for all exception types and defines common methods and behaviors that are inherited by its subclasses.
12. **Explain the difference between checked exceptions and runtime exceptions.**
    - Checked exceptions are checked at compile-time, and the compiler enforces that they are either caught and handled or declared to be thrown. Runtime exceptions, also known as unchecked exceptions, do not require explicit handling or declaration. They can occur at runtime and are not checked by the compiler.
13. **What is the difference between `Error` and `Exception` in Java?**
    - `Error` represents serious problems that are usually beyond the control of the programmer, such as `OutOfMemoryError` or `StackOverflowError`. `Exception`, on the other hand, represents exceptional conditions that can be handled or anticipated in the program logic.
14. **How can you handle multiple exceptions in a single `catch` block?**
    - In Java 7 and later versions, you can use a single `catch` block to handle multiple exceptions by separating the exception types with a pipe (`|`) symbol. For example, `catch (IOException | SQLException ex) {}`. This simplifies the code and reduces duplication when the handling logic is the same for multiple exception types.
15. **What are the best practices for exception handling in Java?**
    - Some best practices for exception handling in Java include using specific exception types, handling exceptions at an appropriate level, providing meaningful error messages, logging exceptions, releasing resources in the `finally` block, and following the principle of fail-fast to catch and handle exceptions as early as possible.

**Strings:**

1. **What is a string in Java?**
    - A string in Java is an object that represents a sequence of characters. It is a widely used data type for storing and manipulating text in Java programs.
2. **How are strings represented in memory in Java?**
    - In Java, strings are stored as an array of characters (`char[]`) internally. The `String` class provides methods to work with these character arrays, making string manipulation easier.
3. **What is the difference between `String`, `StringBuilder`, and `StringBuffer` in Java?**
    - `String` is immutable, meaning its value cannot be changed once created. `StringBuilder` and `StringBuffer` are mutable and can be modified. `StringBuilder` is not thread-safe, while `StringBuffer` is thread-safe but slower due to synchronization.
    1. **Immutability**: `String` objects are immutable, meaning their values cannot be changed once created. In contrast, `StringBuilder` and `StringBuffer` are mutable, allowing for modifications to the underlying character sequence.
    2. **Thread-safety:** `String` objects are inherently thread-safe because they are immutable. On the other hand, `StringBuilder` is not thread-safe, meaning it is not synchronized and not suitable for use in multi-threaded environments. However, `StringBuffer` is thread-safe as it provides synchronized methods to ensure safe concurrent access.
    3. **Performance:** Since `String` objects are immutable, concatenating or modifying strings involves creating new objects, which can be inefficient in terms of memory and performance. `StringBuilder` and `StringBuffer` are designed for efficient string manipulation because they allow for in-place modifications without creating new objects. Among the two, `StringBuilder` is generally faster as it is not synchronized.
    4. **Usage:** `String` is commonly used when immutability is desired, such as representing constant or unchanging values. `StringBuilder` and `StringBuffer` are preferred when frequent modifications to the string are required, such as building strings dynamically or performing heavy string manipulations.
4. **How can you create a string in Java?**
    - Strings can be created in Java using string literals, such as `"Hello"` or by using the `new` keyword and the `String` constructor, such as `String str = new String("Hello")`.
5. **What is string immutability in Java?**
    - String immutability means that once a string object is created, its value cannot be changed. Any operation that appears to modify a string actually creates a new string object with the modified value.
6. **How can you concatenate strings in Java?**
    - Strings can be concatenated in Java using the `+` operator or by using the `concat()` method. For example, `String result = str1 + str2;` or `String result = str1.concat(str2);`.
7. **What are the differences between `equals()` and `==` when comparing strings?**
    - The `equals()` method compares the contents of two strings for equality, while the `==` operator checks if two string references point to the same memory location.
8. **How can you convert a string to uppercase or lowercase in Java?**
    - To convert a string to uppercase, you can use the `toUpperCase()` method, and to convert it to lowercase, you can use the `toLowerCase()` method. For example, `String upper = str.toUpperCase();` or `String lower = str.toLowerCase();`.
9. **Explain the `substring()` method in Java strings.**
    - The `substring()` method in Java strings is used to extract a portion of a string. It takes two parameters: the starting index (inclusive) and the ending index (exclusive) of the substring. For example, `String sub = str.substring(3, 7);` extracts characters from index 3 to index 6.
10. **What is the `charAt()` method used for in Java strings?**
    - The `charAt()` method returns the character at a specified index in a string. For example, `char ch = str.charAt(2);` retrieves the character at index 2.
11. **What is the purpose of the `length()` method in Java strings?**
    - The `length()` method returns the number of characters in a string. For example, `int len = str.length();` gives the length of the string.
12. H**ow can you convert a string to an integer in Java?**
    - You can convert a string to an integer in Java using the `parseInt()` method of the `Integer` class. For example, `int num = Integer.parseInt(str);`.
13. **Explain the concept of string pooling in Java.**
    - String pooling is a mechanism in Java where string literals with the same value are stored in a common memory pool, reducing memory usage. This allows strings with the same value to refer to the same memory location, improving efficiency.
14. **How can you check if a string contains a specific substring in Java?**
    - You can use the `contains()` method to check if a string contains a specific substring. For example, `boolean contains = str.contains("sub");` checks if `str` contains the substring "sub".
15. **What are some commonly used methods in the `String` class?**
    - Some commonly used methods in the `String` class include `length()`, `charAt()`, `substring()`, `concat()`, `equals()`, `toUpperCase()`, `toLowerCase()`, `indexOf()`, `replace()`, and `split()`. These methods provide various functionalities for working with strings in Java.
    
    Certainly, here are answers to the advanced Java interview questions:
    
- **Explain Java Memory Management:**
    - Java memory management involves the allocation and release of memory for objects during program execution. Java uses a combination of the stack and heap to manage memory. The stack holds method call frames, while the heap stores objects and their data. The garbage collector identifies and reclaims memory that is no longer used, preventing memory leaks and manual memory management.
- **Java Collections Framework:**
    - The Java Collections Framework provides a set of classes and interfaces for managing and manipulating collections of objects. Key interfaces include List, Set, and Map. Popular implementations are ArrayList, HashSet, and HashMap. Choosing the right collection depends on factors like ordering, uniqueness, and key-value mappings.
- **Generics and Type Erasure:**
    - Generics in Java allow classes, methods, and interfaces to be parameterized by type. Type erasure means that type information is erased at runtime but retained for type checking at compile-time. This helps ensure type safety while allowing for runtime polymorphism.
- **Concurrency and Multithreading:**
    - Concurrency in Java involves the execution of multiple threads concurrently. Synchronization mechanisms like `synchronized` are used to control access to shared resources and prevent data races. Java''s `java.util.concurrent` package provides higher-level abstractions for managing threads and concurrent tasks.
- **Java Memory Model and Thread Safety:**
    - The Java Memory Model defines the rules for memory visibility between threads. The `synchronized` keyword is used to create critical sections that ensure mutual exclusion and memory visibility guarantees. Proper synchronization is crucial for achieving thread safety.
- **Lambda Expressions and Functional Programming:**
    - Lambda expressions introduced in Java 8 allow concise representation of single-method interfaces (functional interfaces). They are used for functional programming constructs, such as filtering, mapping, and reducing collections. Lambda expressions improve code readability and reduce boilerplate.
- **Streams API:**
    - Java Streams API provides a functional way to work with collections. It allows operations like mapping, filtering, and reducing to be applied to collections in a more expressive and declarative manner. Streams encourage a more functional and parallel approach to data processing.
    - **Garbage Collection and JVM Tuning:**
        - Garbage collection in Java automatically reclaims memory from objects that are no longer reachable. Tuning the JVM involves adjusting parameters such as heap size, garbage collection algorithms, and memory profiling to optimize application performance and memory usage.
    - **Java Memory Profiling and Performance Optimization:**
        - Tools like VisualVM and Java Mission Control are used to profile and optimize Java applications. Memory profiling identifies memory leaks and inefficient memory usage. Performance optimization involves finding and addressing performance bottlenecks.
    - **Annotations and Reflection:**
        - Annotations are metadata that can be added to Java source code. Reflection allows you to inspect and manipulate the metadata of classes and their members at runtime. This is used in frameworks like Spring and Hibernate for configuration and object-relational mapping.
    - **Classloaders:**
        - Java uses classloaders to load classes dynamically. The bootstrap classloader loads core Java classes, the extension classloader loads classes in the extension directories, and the application classloader loads application classes. Custom classloaders can be used to load classes from custom locations.
    - **JDBC and Database Connectivity:**
        
        JDBC is a Java API for connecting to databases. It provides a standard way to interact with databases, execute SQL queries, and manage database connections. JDBC drivers allow Java applications to connect to various database systems.
        
        **Java Design Patterns:**
        
        - Java design patterns are recurring solutions to common problems in software design. They provide templates for solving specific design issues. Examples include Singleton for ensuring a single instance of a class, Factory for creating objects, and Observer for implementing a publish-subscribe model.
        - **Exception Handling:**
            - Java supports both checked and unchecked exceptions. Checked exceptions are required to be caught or declared, while unchecked exceptions (subclasses of `RuntimeException`) are not. Proper exception handling includes catching, logging, and possibly re-throwing exceptions.
        - **Java 9+ Features:**
            - Java 9 and later versions introduced features like modules (JPMS), the `var` keyword for local variable type inference, and enhancements to the Java platform. Modules help modularize code, and `var` simplifies variable declarations.
        - **Java Performance Optimization:**
            - Java performance optimization involves profiling and analyzing code for bottlenecks. It may include optimizing algorithms, minimizing object creation, and employing efficient data structures to enhance application performance.

**Garbage Collector in Java:**

The Java Garbage Collector (GC) is responsible for automatically reclaiming memory occupied by objects that are no longer in use, freeing up resources, and preventing memory leaks.

Relational Database | MongoDB

- Database | Database
- Tables --- Collections
- Rows --- Documents
- Columns --- Fields

Office website:

- `<https://www.mongodb.com/try/download/compass>`', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(26, 'System Design', NULL, '# System Design

[https://chat.openai.com/share/59501bd2-1332-460b-ba67-cf591e38ddaf](https://chat.openai.com/share/59501bd2-1332-460b-ba67-cf591e38ddaf)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(27, 'List of interview questions for Java Developer rol', NULL, '# List of interview questions for Java Developer role

# **Java language and JVM**

- Describe access modifiers (private, protected, public) and differences between them.
- What is inheritance?
- Describe difference between interface and abstract class.
- Is it possible that one class can be both abstract and final at the same time?
- Describe how does Garbage Collector works.
- What types Garbage Collector do we have? When to use which?
- Describe structure of Java Heap.
- Describe structure of JVM.
- What is the difference between Stack and Heap?
- Tell something about `hashCode()` and `equals()` methods. What contract they need to satisfy?
- Can `hashCode()` return constant value? Explain your answer.
- Can two objects have the same hashCode?
- When `obj1.equals(obj2)` is true, then is it possible that `obj1` and `obj2` have different hashCodes?
- Describe `StringBuilder` and `StringBuffer` classes. What are differences between them?
- Do you know `java.util.concurrent` package? Tell something about its contents.
- Do you know any frameworks for concurrent programming?
- Describe `volatile` keyword.
- Describe overriding and overloading. What are differences between them?
- Describe keywords `final`, `finally` and `finalize()`.
- What is immutable object and how can you create it?
- Does all properties of immutable object need to be final?
- What is the difference between creating `String` with `new` operator and literal?
- Describe checked and unchecked exceptions. What are differences between them? When can we use specific type of exception and why?
- How does `substring()` works inside?
- Which method you need to implement to use object as key in a `HashMap`?
- Where do equals and hashcode come in the picture during `get(...)` operation?
- What''s the difference between `Executor.submit()` and `Executor.execute()` method
- Can you write thread-safe Singleton?
- Write code iterating over `HashMap`
- Is it better to synchronize critical section of `getInstance()` or whole `getInstance()` method?
- What''s wrong with using `HashMap` in multithreaded environment?
- How to create, start, destroy and block Threads in Java?
- Do you know any thread-safe collections?
- How would you prevent client from directly instantiation your concrete class?
- What''s the difference between `HashMap` and `HashTable`?
- How does `HashMap` works?
- Describe shortcuts: JNI, JNDI, JAAS
- Describe differences between `Filter` and `Servlet`
- Does `LocalDateTime` have information about time zone? If not, then how to define time zone?
- What are differences between `Array` and `ArrayList`?
- When should we use `LinkedList` and when `ArrayList`?
- How to change a value of the final class with immutable attributes?
- Can you define custom, mutable object as a key in a HashMap? Why it''s wrong idea?
- How can you create an immutable list in a class in which you won''t be able to modify its contents (add/delete/update elements of the list)?

**Spring**

- What bean scopes do we have?
- What''s default bean scope?
- How many instances bean has by default?
- How can we wire beans and components?
- How can we inject components?
- How Spring wires components and beans under the hood?
- What''s new in Spring Boot when we compare it to Spring Core
- What `@SpringBootApplication` annotation has under the hood?
- When we explicitly call a method without any annotation, which calls internally a method with `@Transactional` annotation, then the whole operation will be transactional? Explain why?
- Do Spring annotations work on a private methods?
- Why injecting components via constructor (with `@Autowired` annotation) is better than injecting them via annotations on class attributes?
- When should we use aspects?
- How to create aspect and what should it have?
- How to create async operations?
- How to schedule operations?
- How can you get a Prototype Bean properly from a Bean, which is defined as Singleton?

**Design Patterns**

- What design patterns do you know?
- Describe facade/adapter/builder/{any} pattern.
- What''s the difference between factory and abstract factory pattern?
- What is Singleton?

**Good software development practices**

- What good practices of software development do you know?
- When you take a look at the code how do you recognize if it''s clean and well written?
- How would you design method in the right way?
- What is loose coupling?
- What is recommended maximum number of lines in the method?

**Programming Paradigms**

- Describe structural programming paradigm
- Describe Object-Oriented Programming paradigm
- Describe functional programming paradigm
- Describe reactive programming paradigm

**Multi-threading & Concurrency**

- What problems can we solve with multi-threaded programs?
- What problems do we have during writing multi-threaded programs?
- How to deal with problems occurring in multi-threaded programs?
- What multi-threaded programming models do you know?
- How do you implement different multi-threaded programming models in Java?
- How to deal with shared data model in multi-threaded environment?
- How can you synchronize threads?

**Version Control Systems**

- What kind of Version Control Systems do you know?
- Do you think Git is better than other systems? Why?
- Can you work offline with Git?
- Can you work offline with SVN?

**Continuous Integration**

- What types of Continous Integration Servers do you know? Have you used any?
- How did you used Jenkins or other CI Server in your work?

**Software development methodologies**

- In what methodologies did you work?
- Do you know scrum? Describe it.
- Can you describe kanban model?
- Can you describe waterfall model?

**Testing**

- What types of tests do you know?
- What is the difference between mock and stub?
- Do you know any libraries for mocking? Describe them.
- Do you know any libraries for testing? Describe them.
- What annotations of JUnit do you know and what is their purpose?
- How would you test method, which has to use implementation of method from another class, which is not ready yet?

**Web Services**

- Describe SOAP.
- Describe REST.
    - What request methods can you use for getting/inserting/updating/deleting data?
    - What is common protocol for REST
    - How good RESTful end-point should look like?
    - What are principles of designing good RESTful API?

**Microservices**

- What is microservice? How will you define it?
- What is eventual consistency?
- How do you handle transactions or messages between multiple services?
- What do you do when one operation in chain of service invocations should not be performed (e.g. shipping product when it''s not available in store, but client paid for it)? How to handle such situation in microservice architecture?
- What is autodiscovery?
- What is curcuit breaker?
- How can you monitor services?
- What frameworks/libraries can you use for implementing microservices architecture?

**Others**

- What operating system do you prefer and why?
- What are news introduced in Java 8/9/10/11/...?
- What technical book did you read recently?
- What are your methods for learning new things?

[Http client](List%20of%20interview%20questions%20for%20Java%20Developer%20rol%20537bb8faf1714cc797334567c22330c7/Http%20client%20f6fd011a6a414183ad0b46e184b27fa6.md)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(28, 'Sorting Algorithms', NULL, '# Sorting Algorithms

[https://chat.openai.com/share/65593f46-af75-4da6-aef4-76375c2960e9](https://chat.openai.com/share/65593f46-af75-4da6-aef4-76375c2960e9)

Sorting algorithms are fundamental in computer science and are widely used in various applications. They are used to rearrange a given array or list of elements according to a comparison operator on the elements. Here''s an overview of some common sorting algorithms, particularly relevant in Java programming for data structures and algorithms:

### **1. Bubble Sort**

- **Mechanism:** Repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The process is repeated until the list is sorted.
- **Time Complexity:** Average and Worst case - O(n²), Best case - O(n) when the list is already sorted.
- **Space Complexity:** O(1) - In-place sorting.
- **Use Case:** Not efficient for large lists; more of an educational algorithm to teach the concept of sorting.

### **2. Selection Sort**

- **Mechanism:** Divides the input list into two parts: a sorted sublist of items which is built up from left to right at the front (left) of the list, and a sublist of the remaining unsorted items. The smallest (or largest, depending on sorting order) element from the unsorted sublist is found and swapped with the leftmost unsorted element.

### How does selection sort work?

The selection sort algorithm works in a very simple way. It maintains two subarray for the given array.

- The subarray is already sorted.
- And the second subarray is unsorted.

With every iteration of selection sort, an element is picked from the unsorted subarray and moved to the sorted subarray.

- **Time Complexity:** Always O(n²).
- **Space Complexity:** O(1) - In-place sorting.
- **Use Case:** Simple but inefficient for large lists.

### **3. Insertion Sort**

**a sorting algorithm that, in each iteration, places an unsorted element in its proper place**.

- **Mechanism:** Builds the final sorted array one item at a time. It works similarly to the way you sort playing cards in your hands.
- **Time Complexity:** Average and Worst case - O(n²), Best case - O(n) for nearly sorted list.
- **Space Complexity:** O(1) - In-place sorting.
- **Use Case:** Efficient for small data sets or nearly sorted lists.

### **4. Merge Sort**

- **Mechanism:** Divide and conquer algorithm that divides the input array into two halves, calls itself for the two halves, and then merges the two sorted halves.
- **Time Complexity:** Always O(n log n).
- **Space Complexity:** O(n) - Not an in-place sorting method.
- **Use Case:** Efficient for large lists; stable sort; good for data structures that don''t allow random access (like linked lists).

### **5. Quick Sort**

- **Mechanism:** Another divide and conquer algorithm. It picks an element as a pivot and partitions the given array around the picked pivot.
- **Time Complexity:** Average case - O(n log n), Worst case - O(n²) when the list is already sorted or when all elements are the same (can be avoided with a randomized pivot).
- **Space Complexity:** O(log n) due to recursion stack.
- **Use Case:** Often faster in practice than other O(n log n) algorithms like Merge Sort.

### **6. Heap Sort**

- **Mechanism:** Uses a binary heap data structure. It heapifies a given array to create a max heap and then repeatedly extracts the maximum element and puts it at the end of the array.
- **Time Complexity:** Always O(n log n).
- **Space Complexity:** O(1) - In-place sorting.
- **Use Case:** Sorts in place and suitable for large data sets.

### **7. Radix Sort**

- **Mechanism:** Non-comparative integer sorting algorithm that sorts data with integer keys by grouping keys by the individual digits which share the same significant position and value (like sorting based on units place, then tens place, and so on).
- **Time Complexity:** O(nk) for n keys which have k digits.
- **Space Complexity:** O(n + k).
- **Use Case:** Efficient when the length of the array is greater than the number of digits of the largest number.

### **8. Counting Sort**

- **Mechanism:** Counts the occurrences of each element to sort the array. It works well when the range of input data is not significantly greater than the number of objects to be sorted.
- **Time Complexity:** O(n + k) where k is the range of the input.
- **Space Complexity:** O(n + k).
- **Use Case:** Highly efficient for small integer range; often used as a subroutine in radix sort.

### **9. Bucket Sort**

- **Mechanism:** Distributes the elements of an array into a number of buckets. Each bucket is then sorted individually, either using a different sorting algorithm or by recursively applying the bucket sort.
- **Time Complexity:** Average case - O(n + k), Worst case - O(n²).
- **Space Complexity:** O(n).
- **Use Case:** Useful when input is uniformly distributed over a range.

### **Considerations in Java**

- **Stability:** Some sorting algorithms are stable (they preserve the order of equal elements), which can be important depending on the use case.
- **In-Place Sorting:** Some algorithms like bubble sort and quicksort sort the array in place, using only a small, constant amount of additional space.
- **Library Functions:** Java Collections Framework provides sorting functionality, e.g., **`Arrays.sort()`** and **`Collections.sort()`**, which use optimized versions of sorting algorithms like Quick Sort and Merge Sort.

When choosing a sorting algorithm in Java, consider factors like the size of the dataset, the nature of the data, and whether additional memory usage is permissible', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(29, 'UpSkill', NULL, '# UpSkill

Don''t forget:

- Authentication Persistence
- Session Management
- Unit testing
- Logging
- Exception handling
- Swagger documentation
- Good API practices (pagination, caching, payload compression, connection pool).
- CI/CD if possible.

 P**rojects :** 

**Build your own `Game`**

- [**Java**: *Code a 2D Game Engine using Java - Full Course for Beginners*](https://www.youtube.com/watch?v=025QFeZfeyM) [video]
- [**Java**: *3D Game Development with LWJGL 3*](https://lwjglgamedev.gitbooks.io/3d-game-development-with-lwjgl/content/)

**Build your own `Programming Language`**

- [**Java**: *Crafting interpreters: A handbook for making programming languages*](http://www.craftinginterpreters.com/)
- [**Java**: *Creating JVM Language*](http://jakubdziworski.github.io/categories.html#Enkel-ref)

**Build your own `Voxel Engine`**

- [**Java**: *Java Voxel Engine Tutorial*](https://www.youtube.com/watch?v=QZ4Vk2PkPZk&list=PL80Zqpd23vJfyWQi-8FKDbeO_ZQamLKJL) [video]
- [**Java**: *How to Build an Android Reddit App*](https://www.youtube.com/playlist?list=PLgCYzUzKIBE9HUJU-upNvl3TRVAo9W47y) [video]

**Build your own `3D Renderer`**

- [**Java / JavaScript**: *Build your own 3D renderer*](https://avik-das.github.io/build-your-own-raytracer/)
- [**Java**: *How to create your own simple 3D render engine in pure Java*](http://blog.rogach.org/2015/08/how-to-create-your-own-simple-3d-render.html)

**Questions that are asked in the interview :**

- Kubernetes Operators
- integration testing
- git fork and git clone
- **springboot annotation** means : Annotations in Spring Boot are metadata that provide information about the behavior of various elements in your application, such as classes, methods, and fields. Annotations in Spring Boot are used to simplify the configuration and enable various features of the Spring Framework, allowing for more concise and readable code.
- final, finally, finalise()
- JVM, JRE , JDK
- when to use abstract class and interface
- Garbage Collector
- 

java:

- Static blocks and static initialisers in java
- what is bytecode in java
- what is JIT Compiler
- IS-A and HAS-A relationship
- How to instantiate an abstract class in java
- different types of multitasking
- HashMap vs ConcurrentHashMap
- how hash map works internally
- difference between instance block and static block
- serialisation and deserialisation
- what are 4 main default functional interfaces in java
- can a constructor be final in java
- volatile vs synchronised
- how java is platform independent
- what are the different types of thread
- what is daemon thread
- comparable and comparator
- streams and parallel streams are interchangeable?

spring :

- ExceptionHandler and ControllerAdvice
- what is default scope of bean
- Explain life cycle of bean
- what is Dependency injection and types
- @Controller vs @RestController
- How to read Properties and what is @value anotation in Spring
- What is Inversion of controller
- What is ResponseEntity in spring
- How Spring boot runs internally
- Explain the concept of auto-configuration in spring boot
- Describe how to create a RESTFul web service using spring boot. Provide a basic example with CRUD operations
- How do you handle exceptions in a spring boot applications?
- Explain how to use spring boot Actuator. What are some of the important endpoints?
- How can you secure a spring boot applications? Demonstrate the use of Spring security for basic authentication and authorization
- how do you configure and use externalised configuration properties in a spring boot applications? Provide an example using [application.properties](http://application.properties) or application.yml.
- Describe how to implement and use custom configuration properties in Spring Boot
- How do you set up multiple profiles in a spring boot application? Provide an example where different profiles have different configurations.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(30, 'DevOps-', NULL, '# DevOps-

**what is the difference between deployment and statefulset?**

**Kubernetes Deployment**

A `Deployment` is used to manage stateless applications. It ensures that a specified number of replicas of a pod are running at any given time. Deployments are ideal for applications where each instance is identical and does not need to retain any state information between restarts.

**Key Features of Deployment**:

1. **Stateless Applications**: Designed for stateless applications where each pod instance can be replaced without any impact on the overall application.
2. **Rolling Updates**: Supports rolling updates, which means you can update your application without downtime. It ensures that a certain number of pods are updated at a time.
3. **Replica Management**: Ensures the desired number of replicas are running and can scale up or down as needed.
4. **Declarative Updates**: Allows for declarative updates to application versions.
5. **Self-healing**: Automatically replaces failed or deleted pods to maintain the desired state.

**Use Cases**:

- Web servers
- API servers
- Microservices
- Any application where instances do not need to maintain persistent state

**Example**:

```yaml
yamlCopy code
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-container
        image: my-image:latest

```

### Kubernetes StatefulSet

A `StatefulSet` is used to manage stateful applications. It is designed to handle applications that require stable, persistent storage and ordered deployment and scaling.

**Key Features of StatefulSet**:

1. **Stable Identifiers**: Each pod in a StatefulSet has a stable, unique identifier (name) that remains consistent through pod rescheduling.
2. **Persistent Storage**: Supports persistent storage with Persistent Volume Claims (PVCs) that are associated with each pod, ensuring data is not lost between pod restarts.
3. **Ordered Deployment and Scaling**: Ensures that pods are created, deleted, and scaled in a specific order. This is important for applications that require startup and termination order.
4. **Network Identity**: Provides a stable network identity, which is crucial for stateful applications like databases where each instance needs a consistent network endpoint.

**Use Cases**:

- Databases (e.g., MySQL, PostgreSQL)
- Distributed systems (e.g., Kafka, Zookeeper)
- Stateful applications requiring persistent storage and stable network identities

**Example**:

```yaml
yamlCopy code
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: my-statefulset
spec:
  serviceName: "my-service"
  replicas: 3
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-container
        image: my-image:latest
        volumeMounts:
        - name: my-storage
          mountPath: /data
  volumeClaimTemplates:
  - metadata:
      name: my-storage
    spec:
      accessModes: ["ReadWriteOnce"]
      resources:
        requests:
          storage: 1Gi

```

### Summary of Differences

| Feature | Deployment | StatefulSet |
| --- | --- | --- |
| Use Case | Stateless applications | Stateful applications |
| Pod Identity | Random, can change upon rescheduling | Stable, consistent across rescheduling |
| Persistent Storage | Not inherently supported | Supported with Persistent Volume Claims |
| Deployment Order | No guaranteed order | Ordered, sequential deployment |
| Network Identity | Random pod names and IPs | Stable network identifiers |
| Scaling | All replicas are treated equally | Scaling is ordered |

By understanding these differences, you can choose the appropriate controller for your application based on its specific requirements, ensuring efficient and reliable management within your Kubernetes cluster.

**what is the advantage of multi stage build?** 

Multi-stage builds are a powerful feature in Docker that allow you to use multiple `FROM` statements in your Dockerfile. This approach helps in creating smaller, more efficient, and secure Docker images by separating the build environment from the runtime environment. Here are the key advantages of using multi-stage builds:

### Advantages of Multi-Stage Builds

1. **Smaller Image Size**:
    - Multi-stage builds allow you to copy only the necessary artifacts from the build stage to the final stage. This means that you do not include any unnecessary build dependencies or tools in the final image, significantly reducing its size.
2. **Improved Security**:
    - By separating the build environment from the runtime environment, you ensure that build tools, libraries, and potentially sensitive information (like credentials) are not included in the final runtime image. This reduces the attack surface of your Docker image.
3. **Simplified Dockerfiles**:
    - Multi-stage builds help in keeping Dockerfiles clean and maintainable. You can define multiple stages for different purposes (e.g., building, testing, and packaging) within the same Dockerfile, avoiding the need for complex scripts to manage different stages of the build process.
4. **Enhanced Build Performance**:
    - Reusing layers across different stages of the build can lead to better caching and faster builds. Docker can cache intermediate stages and reuse them, which speeds up the build process, especially when only minor changes are made.
5. **Flexibility and Modularity**:
    - Multi-stage builds allow you to break down your build process into modular stages. This makes it easier to update or change specific parts of the build process without affecting the entire build pipeline. You can also use different base images for different stages, optimizing each stage for its specific needs.
    

**what are the key features of Kubernetes**

### Key Features of Kubernetes

1. **Automated Rollouts and Rollbacks**:
    - Kubernetes can automatically roll out changes to your application or its configuration, monitoring the health of the application during the rollout. If something goes wrong, Kubernetes can roll back the change automatically.
2. **Service Discovery and Load Balancing**:
    - Kubernetes can expose a container using the DNS name or using their own IP address. If traffic to a container is high, Kubernetes can load balance and distribute the network traffic to ensure stability.
3. **Storage Orchestration**:
    - Kubernetes allows you to automatically mount the storage system of your choice, whether from local storage, a public cloud provider, or a network storage system like NFS or GlusterFS.
4. **Self-healing**:
    - Kubernetes restarts containers that fail, replaces containers, kills containers that don’t respond to your user-defined health check, and doesn’t advertise them to clients until they are ready to serve.
5. **Horizontal Scaling**:
    - Kubernetes can scale up and down the number of container instances running your application automatically based on resource utilization metrics (like CPU and memory).
6. **Configuration Management and Secrets**:
    - Kubernetes allows you to store and manage sensitive information, such as passwords, OAuth tokens, and ssh keys. You can deploy and update secrets and application configuration without rebuilding your container images and without exposing secrets in your stack configuration.
7. **Networking and Service Mesh**:
    - Kubernetes supports complex networking configurations, including overlay networks, service mesh architectures, and network policies for secure communication between services.
8. **Logging and Monitoring**:
    - Kubernetes integrates with various logging and monitoring tools, providing insights into the performance and health of your applications. It supports tools like Prometheus for monitoring and Fluentd for logging.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(31, 'Personal Home', NULL, '# Personal Home

Organize everything in your life in one place.

## Daily

---

[Movie List](Personal%20Home%20049fe14026064d64927c0ff32309e55d/Movie%20List%20f19546e5dfd145e18f46fdcb2ed803c9.md)

[Recipes](Personal%20Home%20049fe14026064d64927c0ff32309e55d/Recipes%20fac4e8b3dbe643cd937412df6f850462.csv)

## Life

---

[Yearly Goals](Personal%20Home%20049fe14026064d64927c0ff32309e55d/Yearly%20Goals%2041bfcc515149408c80555967ff348582.md)

[Travel Plans](Personal%20Home%20049fe14026064d64927c0ff32309e55d/Travel%20Plans%2055c22c61649546a2b933d02c88c814a1.csv)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(32, '75 LeetCode problems', NULL, '# 75 LeetCode problems

1, 121, 238, 53, 153, 33, 560, 88, 448, 

LeetCode company wise questions➖

[https://github.com/krishnadey30/LeetCode-Questions-CompanyWise](https://github.com/krishnadey30/LeetCode-Questions-CompanyWise)

[https://github.com/hxu296/leetcode-company-wise-problems-2022](https://github.com/hxu296/leetcode-company-wise-problems-2022)

IHappy Coding!

### **Array**

- [Two Sum](https://leetcode.com/problems/two-sum/)

```java
Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

class Solution {
    public int[] twoSum(int[] nums, int target) {
        int output[] = new int[2];
        for(int i=0; i<nums.length; i++){
            for(int j=i+1; j<nums.length; j++)
            if(nums[i]+nums[j] == target){
                output[0] = i;
                output[1] = j; 
            }
        }
        return output;
    }
}

-------------------------------------------------------------------------------

class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> map = new HashMap<>();

        for(int i=0; i<nums.length; i++){
            map.put(nums[i], i);
        }

        for(int i=0; i<nums.length; i++){
            int k = target - nums[i];
            if(map.containsKey(k) && map.get(k) != i){
                return new int[]{i, map.get(k)};
            }
        }
        return new int[]{};
    }
}
```

- [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)

```java
Example 1:

Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
Example 2:

Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.

class Solution {
    public int maxProfit(int[] prices) {
        int max = 0;
        int buy = prices[0];

        for(int i=1; i<prices.length; i++){
                if(prices[i] < buy){
                    buy = prices[i];
                }else if(prices[i] - buy > max){
                    max = prices[i] - buy;
                }  
            }
        return max;
    }
}
```

- [Contains Duplicate](https://leetcode.com/problems/contains-duplicate/)

```java
Example 1:

Input: nums = [1,2,3,1] ''
Output: true
Example 2:

Input: nums = [1,2,3,4]
Output: false

class Solution {
    public boolean containsDuplicate(int[] nums) {
        Map<Integer, Integer> map = new HashMap<>();
        
        for(int i=0; i<nums.length; i++){
            if(map.containsKey(nums[i]) && map.get(nums[i]) >= 1){
                return true;
            }
                map.put(nums[i], map.getOrDefault(nums[i], 0)+1);
            
        }

        return false;
    }
}
--------------------------------------------------------------------------------

class Solution {
    public boolean containsDuplicate(int[] nums) {
       Arrays.sort(nums);
       for(int i=0; i<nums.length-1; i++){
        if(nums[i] == nums[i+1]){
            return true;
        }
       }
       return false;
    }
}

```

- [Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/)

- [Maximum Subarray](https://leetcode.com/problems/maximum-subarray/)

```java
Given an integer array nums, find the subarray with the largest sum, and return its sum.

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.

class Solution {
    public int maxSubArray(int[] nums) {
        int maxSum = Integer.MIN_VALUE, sum=0;

        for(int i=0; i<nums.length; i++){
            sum += nums[i];
            maxSum = Math.max(maxSum, sum);
        
        if(sum < 0){
            sum= 0;
        }
        }
        return maxSum;
    }
}
```

- [Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)

```java
Given an integer array nums, find a subarray that has the largest product, and return the product.

The test cases are generated so that the answer will fit in a 32-bit integer.

Example 1:

Input: nums = [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

class Solution {
    public int maxProduct(int[] nums) {
    
        int maxProd= nums[0], minProd = nums[0], result= nums[0];

        int n = nums.length;
        
        for (int i = 1; i < n; i++) {
        
			// Swapping min and max
			/* As we know that on multiplying with negative number max will become min 
			and min will become max, so why not as soon as we encounter negative element, we swap the max and min already. */
            if (nums[i] < 0){
                int temp = max;
                max = min;
                min = temp;
            }
                

            max = Math.max(nums[i], max * nums[i]);
            min = Math.min(nums[i], min * nums[i]);

            result = Math.max(result, max);
        }
        return result;
    }
}
```

- [Find Minimum in Rotated Sorted Array](https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/)

```java
Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

[4,5,6,7,0,1,2] if it was rotated 4 times.
[0,1,2,4,5,6,7] if it was rotated 7 times.
Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

Given the sorted rotated array nums of unique elements, return the minimum element of this array.

You must write an algorithm that runs in O(log n) time.

Example 1:

Input: nums = [3,4,5,1,2]
Output: 1
Explanation: The original array was [1,2,3,4,5] rotated 3 times.

class Solution {
    public int findMin(int[] nums) {
       int left = 0;
       int right = nums.length-1;

       while(left < right){
        int mid = left + (right - left)/2;

        if(nums[mid] > nums[right]){
            left = mid+1;
        }else {
            right = mid;
        }
       }

       return nums[left];
    }
}
```

- [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/)

```java
There is an integer array nums sorted in ascending order (with distinct values).

Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed).
For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

You must write an algorithm with O(log n) runtime complexity.

Example 1:

Input: nums = [4,5,6,7,0,1,2], target = 0
Output: 4

class Solution {
    public int search(int[] nums, int target) {
        int left = 0;
        int right = nums.length-1;
       int mid;

        while(left <= right){
             mid = left + (right -left)/2;

            if(nums[mid] == target){
                return mid;
            }
            
            //if the target is between left and mid
            else if(nums[left] <= nums[mid]){
            
		            //compare the target with left and mid, if it is greater than left and smaller than mid
                if(nums[left] <= target && nums[mid] >= target)
                
                //then right will become mid-1, so now array is from left to mid-1(first half)
                right = mid-1;
                else
                
                //else left will become mid+1, then array will be mid+1 to right(second half)
                left = mid+1;
            }else {
            
		            //if the target is greater than mid & less than right
                if(nums[mid] <= target && target <= nums[right])
                left = mid+1;
                else 
                right = mid-1;
            }
        }

        return -1;
    }
}
```

- [3 Sum](https://leetcode.com/problems/3sum/)

```java
Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.

class Solution {
    public List<List<Integer>> threeSum(int[] nums) {
        int target =0;
        
        Set<List<Integer>> set = new HashSet<>();

        List<List<Integer>> res = new ArrayList<>();

   
        Arrays.sort(nums);
       
       for(int i=0; i<nums.length; i++){
    
        int j= i+1;
        int k = nums.length-1;

        while(j<k){
            int sum = nums[i]+nums[j]+nums[k];
            if(sum == target){

                //add new array to the set and make both j++ and k--
                set.add(Arrays.asList(nums[i], nums[j], nums[k]));
                j++;
                k--;
            }else if(sum < target){

                //if the sum is less than target then j++ because array is sorted.
                j++;
            }else {
                k--;
            }
        }
       
       }
       //at the end add all set to the list
        res.addAll(set);

        return res;

    }
}
```

- [Container With Most Water](https://leetcode.com/problems/container-with-most-water/)

```java
Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

Example 1:

Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49

class Solution {
    public int maxArea(int[] height) {
        int maxArea = 0;
        int left = 0;
        int right = height.length-1;
        
        while(left <= right){
           //find min height between left and right because that much amount of water it can hold
            int minHeight = Math.min(height[left], height[right]);

            //find width beacuse to find area you need height and width
            int width = right - left;

            //finding area between left and right containers
            int currentArea = width * minHeight;
            
            //get max area
            maxArea = Math.max(currentArea, maxArea);
            
            if(height[left] < height[right]){
                left++;
            }else {
                right--;
            }
        }
        return maxArea;
    }
}
```

---

### **String**

- [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

```java
Given a string s, find the length of the longest 
substring
 without repeating characters.
 
Example 1:
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.

Example 2:
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

class Solution {
    public int lengthOfLongestSubstring(String s) {
        Set<Character> set = new HashSet<>();
        int maxLength =0;
        int left = 0;

        for(int right= 0; right<s.length(); right++){
            while(set.contains(s.charAt(right))){
                set.remove(s.charAt(left));
                left++;
               
            }
                set.add(s.charAt(right));
                 maxLength = Math.max(maxLength, right-left+1);
            }
        
        return maxLength;
    }
}
```

- [Longest Repeating Character Replacement](https://leetcode.com/problems/longest-repeating-character-replacement/)
- [Minimum Window Substring](https://leetcode.com/problems/minimum-window-substring/)
- [Valid Anagram](https://leetcode.com/problems/valid-anagram/)

```java
Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

class Solution {
    public boolean isAnagram(String s, String t) {
        char[] ch1 = s.toCharArray();
        char[] ch2 = t.toCharArray();

        Arrays.sort(ch1);
        Arrays.sort(ch2);

       return Arrays.equals(ch1, ch2);

    }
}
```

- [Group Anagrams](https://leetcode.com/problems/group-anagrams/)

```java
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        Map<String, List<String>> map = new HashMap<>();
        for(String s : strs){
            char ch[] = s.toCharArray();
            Arrays.sort(ch);
            String sortedWord = new String(ch);
            if(!map.containsKey(sortedWord)){
            
				        //put sortedword as key and empty arryList as value
                map.put(sortedWord, new ArrayList<>());
            }
						//get the value of sorted word which is empty ArrayList add value the original string
            map.get(sortedWord).add(s);
        }

				//return new ArrayList of all the map values
        return new ArrayList<>(map.values());

    }
}

```

- [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)
- [Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)
- [Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/)
- [Palindromic Substrings](https://leetcode.com/problems/palindromic-substrings/)
- [Encode and Decode Strings (Leetcode Premium)](https://leetcode.com/problems/encode-and-decode-strings/)

---

### **Linked List**

- [Reverse a Linked List](https://leetcode.com/problems/reverse-linked-list/)

```java

Given the head of a singly linked list, reverse the list, and return the reversed list.

 

Example 1:

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        ListNode current = head;
        ListNode prev = null;
        ListNode next = null;

        while(current != null){
            next = current.next;
            current.next = prev;
            prev = current;
            current = next;
           
        }

        return prev;
    }
}

```

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/e189c2a2-6dab-4095-8622-bc5b875707bf.png)

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/0ef60ae8-596f-4713-8d5e-96b9d42010a1.png)

- [Detect Cycle in a Linked List](https://leetcode.com/problems/linked-list-cycle/)

```java
Given head, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail''s next pointer is connected to. Note that pos is not passed as a parameter.

Return true if there is a cycle in the linked list. Otherwise, return false.

 

Example 1:

Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

public class Solution {
    public boolean hasCycle(ListNode head) {
       ListNode slow_pointer = head, fast_pointer = head;
        while (fast_pointer != null && fast_pointer.next != null) {
            slow_pointer = slow_pointer.next;
            fast_pointer = fast_pointer.next.next;
            if (slow_pointer == fast_pointer) {
                return true;
            }
        }
        return false;
    }
}

Strategies to Tackle the Problem

Hash Table Method:
This approach involves storing visited nodes in a hash table. During traversal, if a node is encountered that already exists in the hash table, a cycle is confirmed.

Two-Pointers Method (Floyd''s Cycle-Finding Algorithm):
Also known as the "hare and tortoise" algorithm, this method employs two pointers that move at different speeds. If there is a cycle, the fast pointer will eventually catch up to the slow pointer, confirming the cycle''s existence.

Step-by-step Explanation

Initialization:

Initialize two pointers, slow_pointer and fast_pointer, both pointing to the head node initially.
Cycle Detection:

Traverse the list until the fast_pointer or its next becomes None.
Update slow_pointer and fast_pointer as follows:
slow_pointer = slow_pointer.next
fast_pointer = fast_pointer.next.next
If slow_pointer and fast_pointer meet at some point, return True.

```

- [Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)

```java
21. Merge Two Sorted Lists
Solved
Easy

Topics
Companies
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

 

Example 1:

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */

class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        if(list1 == null) return list2;
        if(list2 == null) return list1;

        
            if(list1.val <= list2.val){
                list1.next = mergeTwoLists(list1.next, list2);
                return list1;
            }else {
                list2.next = mergeTwoLists(list1, list2.next);
                return list2;
            }

        
    }
}

OR

class Solution {
    public ListNode mergeTwoLists(ListNode list1, ListNode list2) {
        ListNode dummy = new ListNode();
        ListNode cur = dummy;

        while (list1 != null && list2 != null) {
            if (list1.val > list2.val) {
                cur.next = list2;
                list2 = list2.next;
            } else {
                cur.next = list1;
                list1 = list1.next;
            }
            cur = cur.next;
        }

				if(list1 == null) cur.next = list2;
				else cur.next = list1;
      

        return dummy.next;        
    }
}
```

- [Merge K Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)
- [Remove Nth Node From End Of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)
- [Reorder List](https://leetcode.com/problems/reorder-list/)

---

### **Binary**

- [Sum of Two Integers](https://leetcode.com/problems/sum-of-two-integers/)
- [Number of 1 Bits](https://leetcode.com/problems/number-of-1-bits/)
- [Counting Bits](https://leetcode.com/problems/counting-bits/)
- [Missing Number](https://leetcode.com/problems/missing-number/)
- [Reverse Bits](https://leetcode.com/problems/reverse-bits/)

---

### **Dynamic Programming**

- [Climbing Stairs](https://leetcode.com/problems/climbing-stairs/)
- [Coin Change](https://leetcode.com/problems/coin-change/)
- [Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)
- [Longest Common Subsequence](https://leetcode.com/problems/longest-common-subsequence/)
- [Word Break Problem](https://leetcode.com/problems/word-break/)
- [Combination Sum](https://leetcode.com/problems/combination-sum-iv/)
- [House Robber](https://leetcode.com/problems/house-robber/)
- [House Robber II](https://leetcode.com/problems/house-robber-ii/)
- [Decode Ways](https://leetcode.com/problems/decode-ways/)
- [Unique Paths](https://leetcode.com/problems/unique-paths/)
- [Jump Game](https://leetcode.com/problems/jump-game/)

---

### **Graph**

- [Clone Graph](https://leetcode.com/problems/clone-graph/)
- [Course Schedule](https://leetcode.com/problems/course-schedule/)
- [Pacific Atlantic Water Flow](https://leetcode.com/problems/pacific-atlantic-water-flow/)
- [Number of Islands](https://leetcode.com/problems/number-of-islands/)
- [Longest Consecutive Sequence](https://leetcode.com/problems/longest-consecutive-sequence/)
- [Alien Dictionary (Leetcode Premium)](https://leetcode.com/problems/alien-dictionary/)
- [Graph Valid Tree (Leetcode Premium)](https://leetcode.com/problems/graph-valid-tree/)
- [Number of Connected Components in an Undirected Graph (Leetcode Premium)](https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/)

---

### **Interval**

- [Insert Interval](https://leetcode.com/problems/insert-interval/)
- [Merge Intervals](https://leetcode.com/problems/merge-intervals/)
- [Non-overlapping Intervals](https://leetcode.com/problems/non-overlapping-intervals/)
- [Meeting Rooms (Leetcode Premium)](https://leetcode.com/problems/meeting-rooms/)
- [Meeting Rooms II (Leetcode Premium)](https://leetcode.com/problems/meeting-rooms-ii/)

---

### **Matrix**

- [Set Matrix Zeroes](https://leetcode.com/problems/set-matrix-zeroes/)
- [Spiral Matrix](https://leetcode.com/problems/spiral-matrix/)
- [Rotate Image](https://leetcode.com/problems/rotate-image/)
- [Word Search](https://leetcode.com/problems/word-search/)

---

### **Tree**

- [Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)
- [Same Tree](https://leetcode.com/problems/same-tree/)
- [Invert/Flip Binary Tree](https://leetcode.com/problems/invert-binary-tree/)
- [Binary Tree Maximum Path Sum](https://leetcode.com/problems/binary-tree-maximum-path-sum/)
- [Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)
- [Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)
- [Subtree of Another Tree](https://leetcode.com/problems/subtree-of-another-tree/)
- [Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/)
- [Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/)
- [Kth Smallest Element in a BST](https://leetcode.com/problems/kth-smallest-element-in-a-bst/)
- [Lowest Common Ancestor of BST](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/)
- [Implement Trie (Prefix Tree)](https://leetcode.com/problems/implement-trie-prefix-tree/)
- [Add and Search Word](https://leetcode.com/problems/add-and-search-word-data-structure-design/)
- [Word Search II](https://leetcode.com/problems/word-search-ii/)

---

### **Heap**

- [Merge K Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)
- [Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)
- [Find Median from Data Stream](https://leetcode.com/problems/find-median-from-data-stream/)

---

### **Important Link:**

- [14 Patterns to Ace Any Coding Interview Question](https://hackernoon.com/14-patterns-to-ace-any-coding-interview-question-c5bb3357f6ed)
- [Grind 75](https://www.techinterviewhandbook.org/grind75)

Here is the leetcode list for Blind 75 and more:

Blind 75:

[https://leetcode.com/list/oizxjoit](https://leetcode.com/list/oizxjoit)

Grind 169:

[https://leetcode.com/list/rabvlt31](https://leetcode.com/list/rabvlt31)

Grind 75:

[https://leetcode.com/list/](https://leetcode.com/list/rab78cw1) ‘

Neetcode 150:

[https://leetcode.com/list/rr2ss0g5](https://leetcode.com/list/rr2ss0g5)

SQL:

[https://leetcode.com/list/o2qifkts](https://leetcode.com/list/o2qifkts)

![Untitled](75%20LeetCode%20problems%2078433aacf44c4c39b2698f45d7a53cd0/Untitled.png)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(33, 'Home', NULL, '', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(34, 'new_notes_123', NULL, 'sdfsdfasdfsd

asdfsd
sadfsedf', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(35, 'Java', NULL, '# Java

[https://chat.openai.com/share/f187f627-871b-410f-bcab-cb6a77b73d80](https://chat.openai.com/share/f187f627-871b-410f-bcab-cb6a77b73d80)

### **1. Encapsulation (Data Hiding)**

**Definition:** Encapsulation is the process of wrapping data (variables) and code (methods) together as a single unit while restricting direct access to some details.

**Example in the Food Ordering System:**

- A **Customer** class encapsulates customer details like name, email, and phone number.
- These details should not be directly accessible from outside but through getter and setter methods.

✅ **Why Encapsulation?**

- Prevents unauthorized access to sensitive customer data.
- Allows controlled modification of data.

### **2. Inheritance (Code Reusability)**

**Definition:** Inheritance allows one class (child) to acquire the properties and behaviors of another class (parent).

**Example in the Food Ordering System:**

- A **User** class can be a parent class, and **Customer** and **RestaurantOwner** can be child classes inheriting common properties.

✅ **Why Inheritance?**

- Avoids code duplication.
- Common attributes and methods are reused.

### **3. Polymorphism (Method Overloading & Overriding)**

**Definition:** Polymorphism allows methods to take multiple forms. This can be achieved in two ways:

1. **Method Overloading** (Same method name but different parameters)
2. **Method Overriding** (Child class provides a specific implementation of a method)

### **Method Overloading Example (Compile-time Polymorphism)**

- A `Payment` class may have different methods to process payments via different modes.

### **Method Overriding Example (Runtime Polymorphism)**

- The `Restaurant` class has a `displayMenu()` method, but different types of restaurants may override it.

✅ **Why Polymorphism?**

- Increases flexibility by allowing different implementations of the same method.
- Helps in achieving **dynamic method dispatch** at runtime.

### **4. Abstraction (Hiding Implementation Details)**

**Definition:** Abstraction is the concept of hiding the implementation details and only showing essential features.

**Example in the Food Ordering System:**

- The `DeliveryService` class provides an abstract method `deliverOrder()`, but different delivery partners implement it in their own way.

✅ **Why Abstraction?**

- Hides complex logic from the user.
- Improves maintainability by separating implementation from definition.

### **Final Summary of OOPs Concepts in Food Ordering System**

| **OOP Concept** | **Real-world Example in Food Ordering System** |
| --- | --- |
| **Encapsulation** | Hiding customer details and providing controlled access through getters/setters. |
| **Inheritance** | `Customer` and `RestaurantOwner` inherit from `User` class. |
| **Polymorphism** | `displayMenu()` method behaves differently for Fast Food and Fine Dining restaurants. |
| **Abstraction** | `DeliveryService` defines `deliverOrder()` but different delivery types implement it uniquely. |

# Polymorphism

**Polymorphism** **is the ability of an object to take on many forms.** It allows one interface to be used for a general class of actions, with specific behaviors defined at runtime based on the actual object that is invoking the method. Polymorphism is mainly divided into two types in Java:

- **Compile-time (Static) Polymorphism**: This is achieved through **method overloading**, where the method that gets invoked is determined at compile-time.
- **Runtime (Dynamic) Polymorphism**: This is achieved through **method overriding**, where the method that gets invoked is determined at runtime based on the actual object type, even though the reference may be of a superclass type.

The process of representing one form in multiple forms is known as **Polymorphism**.

**Different definitions of Polymorphism are:**

1. Polymorphism allows us to perform a single action in different ways.
2. Polymorphism allows you to define one interface and have multiple implementations
3. We can create functions or reference variables that behave differently in a different programmatic context.
4. Polymorphism means many forms.

## A real-world example of polymorphism

Suppose if you are in a classroom at that time you behave like a **student**, when you are in the market at that time you behave like a **customer** when you at your home at that time you behave like a **son** or **daughter**, Here one person present in different-different behaviors.

![](https://1.bp.blogspot.com/-hT9QvuuQKtM/YS8HdoYq6mI/AAAAAAAAJD0/6dZ2WVmZcKILUYWxGAygCOeak_9RKVL9QCLcBGAsYHQ/s16000/Polymorphism%2BReal-World%2BExample.jpg)

### Differences Between Polymorphism, Overloading, and Overriding:

| Feature | **Polymorphism** | **Overloading** | **Overriding** |
| --- | --- | --- | --- |
| **Type** | Can be Compile-time (static) or Runtime (dynamic) | Compile-time (static polymorphism) | Runtime (dynamic polymorphism) |
| **Definition** | The ability of an object to take many forms | Multiple methods with the same name but different parameters | Subclass provides its own implementation of a superclass method |
| **Binding** | Both compile-time (overloading) and runtime (overriding) | Compile-time | Runtime |
| **Method Signature** | Not necessarily related to method signature | Same method name, different parameter list | Same method name and parameter list |
| **Inheritance Requirement** | Required for runtime polymorphism (overriding) | Not required | Required |
| **Return Type** | Can vary in compile-time polymorphism | Can vary (not necessarily the same) | Must be the same or a covariant return type |
| **Object Type vs. Reference Type** | Polymorphism depends on the actual object at runtime | Not relevant (resolved at compile-time) | Depends on the actual object at runtime |
| **Usage Example** | Overriding methods to allow different behavior for different object types | Overloading constructors or utility methods for flexibility | Providing specific behavior in subclasses for inherited methods |

**Comparable v/s Comparator :**

In Java, `Comparator` and `Comparable` are two interfaces used for sorting collections and arrays of objects. They serve similar purposes but are used in different contexts and have different functionalities. Here’s a detailed explanation of their differences:

### Comparable Interface

1. **Definition**: The `Comparable` interface is used to define the natural ordering of objects of a class. A class that implements `Comparable` must define the `compareTo` method.
2. **Single Sorting Sequence**: Implementing `Comparable` allows for only one way of sorting. The class itself determines how its instances are compared.
3. **Implementation**:
    - The class that needs to be compared must implement the `Comparable` interface.
    - The `compareTo` method is overridden to define the natural ordering.
    - The `compareTo` method returns a negative integer, zero, or a positive integer if the object is less than, equal to, or greater than the specified object, respectively.
4. **Example**:
    
    ```java
    javaCopy code
    public class Student implements Comparable<Student> {
        private String name;
        private int age;
    
        public Student(String name, int age) {
            this.name = name;
            this.age = age;
        }
    
        @Override
        public int compareTo(Student other) {
            return Integer.compare(this.age, other.age); // Natural ordering by age
        }
    
        // Getters and toString() method
    }
    
    public static void main(String[] args) {
        List<Student> students = new ArrayList<>();
        students.add(new Student("Alice", 22));
        students.add(new Student("Bob", 20));
        students.add(new Student("Charlie", 21));
    
        Collections.sort(students); // Sorts using compareTo method
        for (Student s : students) {
            System.out.println(s);
        }
    }
    
    ```
    

### Comparator Interface

1. **Definition**: The `Comparator` interface is used to define multiple ways of comparing two objects of a class. It is typically used when you want to sort objects in ways that differ from their natural ordering.
2. **Multiple Sorting Sequences**: Using `Comparator` allows for multiple ways of sorting. You can create different comparators for different sorting sequences.
3. **Implementation**:
    - A separate class or an anonymous class implements the `Comparator` interface.
    - The `compare` method is overridden to define the custom ordering.
    - The `compare` method returns a negative integer, zero, or a positive integer if the first argument is less than, equal to, or greater than the second, respectively.
4. **Example**:
    
    ```java
    javaCopy code
    public class Student {
        private String name;
        private int age;
    
        public Student(String name, int age) {
            this.name = name;
            this.age = age;
        }
    
        // Getters and toString() method
    }
    
    public class AgeComparator implements Comparator<Student> {
        @Override
        public int compare(Student s1, Student s2) {
            return Integer.compare(s1.getAge(), s2.getAge());
        }
    }
    
    public class NameComparator implements Comparator<Student> {
        @Override
        public int compare(Student s1, Student s2) {
            return s1.getName().compareTo(s2.getName());
        }
    }
    
    public static void main(String[] args) {
        List<Student> students = new ArrayList<>();
        students.add(new Student("Alice", 22));
        students.add(new Student("Bob", 20));
        students.add(new Student("Charlie", 21));
    
        Collections.sort(students, new AgeComparator()); // Sorts by age
        for (Student s : students) {
            System.out.println(s);
        }
    
        Collections.sort(students, new NameComparator()); // Sorts by name
        for (Student s : students) {
            System.out.println(s);
        }
    }
    
    ```
    

### Key Differences

- **Purpose**:
    - `Comparable`: Used to define the natural ordering of objects. A class implements `Comparable` to specify how its instances are compared.
    - `Comparator`: Used to define multiple custom orderings. A separate class or an anonymous class implements `Comparator` to compare objects in different ways.
- **Method**:
    - `Comparable`: Implements the `compareTo` method.
    - `Comparator`: Implements the `compare` method.
- **Flexibility**:
    - `Comparable`: Provides a single default sorting behavior.
    - `Comparator`: Allows for multiple sorting behaviors and can be changed without modifying the class itself.
- **Usage**:
    - `Comparable`: When you have one natural way of comparing objects.
    - `Comparator`: When you need multiple ways of comparing objects or when you cannot modify the class to implement `Comparable`.

1. **When to Use Abstract Classes**:
    - Use an abstract class when you want to provide a base class with some common functionality, but also want to enforce that certain methods must be implemented by subclasses.
    - Abstract classes are useful when multiple related classes share common behavior, but you want to ensure that each subclass defines its own specific behaviors.

### Real-World Use of Interfaces:

1. **Multiple Inheritance of Behavior**: Java does not allow multiple inheritance of classes, but a class can implement multiple interfaces, effectively allowing a form of multiple inheritance of behavior.
2. **Defining Contracts for Behavior**: Interfaces define a **contract** for what a class must do, without specifying how it should do it. This promotes a clean separation between what a class does and how it does it, enabling more flexible and modular code.
3. **Loose Coupling**: Interfaces allow for **loose coupling** between components. When you program to an interface, you can change the underlying implementation without affecting the code that uses the interface. This is particularly useful in large-scale systems where you may need to swap out different implementations based on requirements or performance considerations.

### Differences Between Abstract Classes and Interfaces:

1. **Abstract Classes**:
    - Can contain both abstract and non-abstract methods.
    - Can have constructors, fields, and method implementations.
    - A class can only extend one abstract class (single inheritance).
2. **Interfaces** (after Java 8):
    - Can contain abstract methods, default methods, and static methods.
    - Cannot have instance fields or constructors.
    - A class can implement multiple interfaces (multiple inheritance of behavior).

### Key Differences Between Interface and Abstract Class:

| **Feature** | **Interface** | **Abstract Class** |
| --- | --- | --- |
| **Method Implementation** | Can have abstract methods, default methods, static methods (since Java 8). | Can have both abstract and concrete methods. |
| **Multiple Inheritance** | A class can implement multiple interfaces. | A class can extend only one abstract class (single inheritance). |
| **Fields** | Can only have `public`, `static`, and `final`constants (no instance fields). | Can have instance variables and constants (fields can be `protected`, `private`, etc.). |
| **Constructors** | Cannot have constructors. | Can have constructors, but cannot instantiate directly. |
| **Use Case** | Used to define a contract for behavior that multiple unrelated classes can implement. | Used when related classes share common behavior but also need to define their own methods. |

**Can we make a class abstract without an abstract method?**

Yes, in Java, you can make a class **abstract** without having any abstract methods. A class can be declared abstract simply by using the `abstract` keyword, even if it does not contain any abstract methods. The primary purpose of making a class abstract is to prevent it from being instantiated directly, even if it contains fully implemented methods.

**Can we make a class both final and abstract at the same time?**

No, you **cannot** make a class both `final` and `abstract` at the same time in Java. These two keywords are contradictory and serve opposite purposes:

- The `*abstract**` keyword indicates that a class is meant to be **inherited** and cannot be instantiated directly. Abstract classes are designed to be **extended** by subclasses.
- The `*final**` keyword, when applied to a class, means that the class **cannot be extended** or inherited by any subclass. This is typically used to prevent further modification or extension of the class.

**Can we overload or override the main method in Java?**

**Overloading the `main` Method:**

Yes, you **can overload** the `main` method in Java. Overloading means having multiple methods with the same name but different parameter lists (number or types of parameters). The **JVM** will always look for the specific `main` method signature when starting a program.

However, you can define additional `main` methods with different signatures in the same class, but they won''t be used as the entry point for the application. The overloaded `main` methods can be invoked like any other method within your code.

### Overriding the `main` Method:

No, you **cannot override** the `main` method in Java in the traditional sense of method overriding because `main` is a **static method**. In Java, static methods are associated with the class, not with instances of the class. Since overriding requires dynamic method dispatch (which occurs based on the instance of the class), static methods cannot be overridden. Overriding applies to instance methods only.

However, you can define a `main` method in a subclass, but this will result in **method hiding** rather than overriding. The subclass will hide the `main` method of its superclass, and the version of `main` that gets called depends on the class that is being referenced at compile time.

**Can an interface extend more than one interface in Java?**

Yes, in Java, an interface can extend more than one interface. This is one of the key features of interfaces in Java that supports **multiple inheritance of behavior**. When an interface extends multiple interfaces, it inherits the abstract methods and default methods from all the interfaces it extends. This allows a single interface to combine the behaviors defined in several other interfaces.

**Can a class extend more than one class in Java?**

No, a class in Java **cannot extend more than one class**. Java does not support **multiple inheritance** for classes, meaning a class can only extend one superclass. This is to avoid complexities and potential ambiguities that arise from multiple inheritance, such as the **Diamond Problem**.

**What is the difference between abstraction and polymorphism in Java?**

### **Difference Between Abstraction and Polymorphism in Java:**

| Feature | **Abstraction** | **Polymorphism** |
| --- | --- | --- |
| **Definition** | Hiding the implementation details and exposing only the essential features. | Ability of an object to take many forms and methods to behave differently based on the object invoking them. |
| **Purpose** | Define the structure of an object and focus on what an object can do without worrying about how it does it. | Allow one action to be performed in different ways, depending on the object or method signature. |
| **How Achieved** | Achieved using **abstract classes** or **interfaces**. | Achieved through **method overloading** (compile-time) and **method overriding** (runtime). |
| **Example of Use** | Exposing a blueprint (such as vehicle behaviors) for multiple subclasses. | Providing different behaviors (e.g., animal sounds) based on the actual object type. |
| **Compile-time vs Runtime** | Primarily related to design-time (compile-time) as it focuses on hiding internal details. | Can be either **compile-time** (overloading) or **runtime**(overriding) polymorphism. |
| **Flexibility** | Defines what must be done but allows implementing classes to vary the details. | Allows for different implementations of the same method in different classes, providing runtime flexibility. |
| **Type** | A design principle related to hiding complexity. | A behavior concept that allows methods or operations to perform differently in different contexts. |
| **Example** | Abstract method `start()` defined in `Vehicle`, implemented by `Car` and `Bike`. | Method `sound()` overridden in `Dog` and `Cat` to provide specific behavior. |', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(36, 'Docker and Kubernetes', NULL, '# Docker and Kubernetes

**Docker Commands used in the course**

| Docker Command | Description |
| --- | --- |
| "docker build . -t eazybytes/accounts:s4" | To generate a docker image based on a Dockerfile |
| "docker run -p 8080:8080 eazybytes/accounts:s4" | To start a docker container based on a given image |
| "docker images" | To list all the docker images present in the Docker server |
| "docker image inspect image-id" | To display detailed image information for a given image id |
| "docker image rm image-id" | To remove one or more images for a given image ids |
| "docker image push docker.io/eazybytes/accounts:s4" | To push an image or a repository to a registry |
| "docker image pull docker.io/eazybytes/accounts:s4" | To pull an image or a repository from a registry |
| "docker ps" | To show all running containers |
| "docker ps -a" | To show all containers including running and stopped |
| "docker container start container-id" | To start one or more stopped containers |
| "docker container pause container-id" | To pause all processes within one or more containers |
| "docker container unpause container-id" | To unpause all processes within one or more containers |
| "docker container stop container-id" | To stop one or more running containers |
| "docker container kill container-id" | To kill one or more running containers instantly |
| "docker container restart container-id" | To restart one or more containers |
| "docker container inspect container-id" | To inspect all the details for a given container id |
| "docker container logs container-id" | To fetch the logs of a given container id |
| "docker container logs -f container-id" | To follow log output of a given container id |
| "docker container rm container-id" | To remove one or more containers based on container ids |
| "docker container prune" | To remove all stopped containers |
| "docker compose up" | To create and start containers based on given docker compose file |
| "docker compose down" | To stop and remove containers |
| "docker compose start" | To start containers based on given docker compose file |
| "docker compose down" | To stop the running containers |
| "docker run -p 3306:3306 --name accountsdb -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=accountsdb -d mysql" | To create a MySQL DB container |
| "docker run -p 6379:6379 --name eazyredis -d redis" | To create a Redis Container |
| "docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:22.0.3 start-dev" | To create Keycloak Container |

**Kubernetes Commands used in the course**

| Kubernetes Command | Description |
| --- | --- |
| "kubectl apply -f filename" | To create a deployment/service/configmap based on a given YAML file |
| "kubectl get all" | To get all the components inside your cluster |
| "kubectl get pods" | To get all the pods details inside your cluster |
| "kubectl get pod pod-id" | To get the details of a given pod id |
| "kubectl describe pod pod-id" | To get more details of a given pod id |
| "kubectl delete pod pod-id" | To delete a given pod from cluster |
| "kubectl get services" | To get all the services details inside your cluster |
| "kubectl get service service-id" | To get the details of a given service id |
| "kubectl describe service service-id" | To get more details of a given service id |
| "kubectl get nodes" | To get all the node details inside your cluster |
| "kubectl get node node-id" | To get the details of a given node |
| "kubectl get replicasets" | To get all the replica sets details inside your cluster |
| "kubectl get replicaset replicaset-id" | To get the details of a given replicaset |
| "kubectl get deployments" | To get all the deployments details inside your cluster |
| "kubectl get deployment deployment-id" | To get the details of a given deployment |
| "kubectl get configmaps" | To get all the configmap details inside your cluster |
| "kubectl get configmap configmap-id" | To get the details of a given configmap |
| "kubectl get events --sort-by=.metadata.creationTimestamp" | To get all the events occured inside your cluster |
| "kubectl scale deployment accounts-deployment --replicas=1" | To set the number of replicas for a deployment inside your cluster |
| "kubectl set image deployment gatewayserver-deployment gatewayserver=eazybytes/gatewayserver:s11 --record" | To set a new image for a deployment inside your cluster |
| "kubectl rollout history deployment gatewayserver-deployment" | To know the rollout history for a deployment inside your cluster |
| "kubectl rollout undo deployment gatewayserver-deployment --to-revision=1" | To rollback to a given revision for a deployment inside your cluster |
| "kubectl get pvc" | To list the pvcs inside your cluster |
| "kubectl delete pvc data-happy-panda-mariadb-0" | To delete a pvc inside your cluster |', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(37, 'Multi-Threading', NULL, '# Multi-Threading

Implementing multithreading in Java involves creating multiple threads to execute tasks concurrently within a program. This can significantly improve the performance of your application, especially when dealing with tasks that are naturally parallel or when trying to maintain responsiveness in user interfaces. Here''s a basic guide to implementing multithreading in Java:

### **1. Understanding Threads**

A thread in Java is the smallest unit of execution within a process. Java provides built-in support for multithreading, allowing multiple threads to run concurrently.

### **2. Ways to Create Threads**

There are two main ways to create a thread in Java:

- **Extending the `Thread` class**: Create a new class that extends the **`Thread`** class and overrides its **`run()`** method.
- **Implementing the `Runnable` interface**: Create a new class that implements the **`Runnable`** interface and implement its **`run()`** method.

### **Extending the `Thread` Class**

```java
class MyThread extends Thread {
    public void run() {
        // Code to execute in the new thread
    }
}

public class Main {
    public static void main(String[] args) {
        MyThread t1 = new MyThread();
        t1.start(); // Starts the thread
    }
}

```

### **Implementing the `Runnable` Interface**

```java

class MyRunnable implements Runnable {
    public void run() {
        // Code to execute in the new thread
    }
}

public class Main {
    public static void main(String[] args) {
        Thread t1 = new Thread(new MyRunnable());
        t1.start(); // Starts the thread
    }
}
```

### **3. Starting the Thread**

Call the **`start()`** method on an instance of the **`Thread`** class. This method invokes the **`run()`** method in a new thread of execution.

### **4. Thread Lifecycle**

A thread in Java goes through various states: New, Runnable, Running, Waiting/Blocked, and Terminated.

### **5. Synchronization**

When multiple threads access shared resources, you need to ensure thread safety to avoid inconsistencies. Use synchronized blocks or methods to achieve this.

### **6. Thread Communication**

Threads can communicate with each other using methods like **`wait()`**, **`notify()`**, and **`notifyAll()`**.

### **7. Handling Concurrency Issues**

Be aware of issues like deadlock, race conditions, and starvation. Proper handling of synchronization and thread communication can mitigate these issues.

### **8. Advanced Features**

Java provides advanced features for thread management, such as thread pools, executors, and concurrent collections in the **`java.util.concurrent`** package.

### **9. Best Practices**

- Use thread pools where possible to manage threads efficiently.
- Minimize synchronization to reduce contention.
- Always catch exceptions in the **`run()`** method.
- Be cautious with the use of **`stop()`**, **`suspend()`**, and **`resume()`** methods as they are deprecated due to safety issues.

### **Example: Using `Runnable` Interface**

Here’s a simple example of implementing multithreading by using the **`Runnable`** interface:

```java

public class MyRunnable implements Runnable {
    @Override
    public void run() {
        System.out.println("Thread is running.");
    }

    public static void main(String[] args) {
        MyRunnable obj = new MyRunnable();
        Thread thread = new Thread(obj);
        thread.start();
    }
}

```

In this example, the **`MyRunnable`** class implements the **`Runnable`** interface and its **`run`** method. A **`Thread`** object is created with an instance of **`MyRunnable`**, and the thread is started with **`thread.start()`**. When the thread starts, it executes the code inside the **`run`** method.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(38, 'Job Interview Preparation', NULL, '# Job Interview Preparation

👋 Welcome to Notion!

Here are the basics:

- [ ]  Click anywhere and just start typing
- [ ]  Hit **/** to see all the types of content you can add - headers, videos, sub pages, etc.
- [ ]  Highlight any text, and use the menu that pops up to **style** *your* ~~writing~~ `however` [you](https://www.notion.so/product) like
- [ ]  See the **⋮⋮** to the left of this checkbox on hover? Click and drag to move this line
- [ ]  Click the **+ New Page** button at the bottom of your sidebar to add a new page
- [ ]  Click **Templates** in your sidebar to get started with pre-built pages
- This is a toggle block. Click the little triangle to see more useful tips!
    - [**notion.com/templates**](https://www.notion.so/templates): More templates built by the Notion community
    - [**notion.com/help**](https://www.notion.so/help): ****Guides and FAQs for everything in Notion
    - [**notion.com/guides**](http://notion.com/guides): Watch videos and read tutorials to become a Notion expert

👉 **Have a question?** Click the `?` at the bottom right for more guides, or to send us a message.

[Capgemini Project](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Capgemini%20Project%2009da657e96d344b2a5452236696905eb.md)

[Debugging](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Debugging%200fcba747909542e8a878b397acb50b5a.md)

[Revision before interview](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Revision%20before%20interview%2034280fd82e95431b8e53f2a1f01ed89e.md)

[Unit Testing](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Unit%20Testing%207196c2f0090a49e1b6a90103b20f4dcf.md)

[git](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/git%206b337a508dda40658477a3acf94ca809.md)

[Bit bucket and Docker](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Bit%20bucket%20and%20Docker%2097b125f1d9164965acc0ecd14fed3af0.md)

[JavaScript](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/JavaScript%20aa657371f0054f2da3242634f91e4274.md)

[Springboot](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Springboot%200dd6b33103844d3aa3ba7bf74c5be2e9.md)

[Must Revision before interview](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Must%20Revision%20before%20interview%20ec269f73e77742f9b663a862ffdd0d22.md)

[Behavioral questions and answers](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Behavioral%20questions%20and%20answers%20da2a9cba0ea4438ca4484a9a88024336.md)

[Componies and Asked quetions](Job%20Interview%20Preparation%203c35c666365f4f47ae48d52ca4f6deeb/Componies%20and%20Asked%20quetions%203b27b4e3461d4b65a55579fd97b4dee8.md)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(39, 'Microservices', NULL, '# Microservices

I''m familiar with microservices. Microservices is an architectural style and design pattern used in software development to build applications as a collection of small, independent, and loosely coupled services. Each service is responsible for a specific, well-defined task or functionality within the application. These services can communicate with each other through APIs, typically over HTTP, and they can be developed, deployed, and scaled independently.”

Certainly. Microservices offer several advantages, such as:

- **Scalability**: Services can be independently scaled to meet demand, optimizing resource usage.
- **Flexibility**: Each service can be developed using the most appropriate technology stack.
- **Ease of Maintenance**: Small, focused services are easier to maintain and update.
- **Fault Isolation**: A failure in one service doesn''t necessarily impact the entire application.
- **Continuous Deployment**: Microservices can be continuously deployed, enabling rapid feature delivery.

However, there are also challenges, including:

- **Complexity**: Coordinating communication and data flow between services can be complex.
- **Testing**: Testing the interactions between services can be challenging.
- **Operational Overhead**: Managing and monitoring numerous services can be operationally intensive.
- **Data Management**: Handling data consistency and database changes can be challenging.
- **Security**: Security measures need to be in place for communication between services."', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(40, 'Spring Boot', NULL, '# Spring Boot

Spring Boot makes it easy to create stand-alone, production-grade Spring based application that you can “Just Run”

**Spring Boot Layers**

The spring boot consists of the following four layers:

1. **Presentation Layer** – Authentication & Json Translation
2. **Business Layer** – Business Logic, Validation & Authorization
3. **Persistence Layer** – Storage Logic
4. **Database Layer** – Actual Database

![](https://media.geeksforgeeks.org/wp-content/uploads/20220306155306/Fig47.jpg)

Fig 1 – Layers Of Spring Boot

**1. Presentation Layer**

The presentation layer is the top layer of the spring boot 
architecture. It consists of Views. i.e., the front-end part of the 
application. It handles the HTTP requests and performs authentication. 
It is responsible for converting the JSON field’s parameter to Java 
Objects and vice-versa. Once it performs the authentication of the 
request it passes it to the next layer. i.e., the business layer.

**2. Business Layer**

The business layer contains all the business logic. It consists of 
services classes. It is responsible for validation and authorization.

**3. Persistence Layer**

The persistence layer contains all the database storage logic. It is 
responsible for converting business objects to the database row and 
vice-versa.

**4. Database Layer**

The database layer contains all the databases such as [MySql](https://www.geeksforgeeks.org/sql-tutorial/), [MongoDB](https://www.geeksforgeeks.org/mongodb-an-introduction/), etc. This layer can contain multiple databases. It is responsible for performing the [CRUD](https://www.geeksforgeeks.org/spring-boot-crud-operations/) operations.

### Spring Boot Flow Architecture

![](https://media.geeksforgeeks.org/wp-content/uploads/20220306170607/Fig48.jpg)

Fig 2 – Spring boot flow architecture

**Explanation:**

- The Client makes an **HTTP** request(GET, PUT, POST, etc.)
- The HTTP request is forwarded to the **Controller**. The controller maps the request. It processes the handles and calls the server logic.
- The business logic is performed in the **Service layer**. The spring boot performs all the logic over the data of the database which is mapped to the spring boot model class through [Java Persistence Library](https://www.geeksforgeeks.org/spring-boot-spring-data-jpa/)(**JPA**).
- The [JSP](https://www.geeksforgeeks.org/introduction-to-jsp/) page is returned as Response from the controller.

**Bean :-**

In the context of the Spring Framework, a "bean" is a fundamental building block and a key concept. Beans are Java objects that are managed by the Spring IoC (Inversion of Control) container. They are created, configured, and managed by the container and can be of various types, such as Java objects, JavaBeans, or POJOs (Plain Old Java Objects).

Here are some key characteristics and concepts related to beans in Spring:

1. **Bean Definition:** A bean is defined in the Spring configuration as a class or a set of instructions that the IoC container uses to create and configure an object. Bean definitions typically include information about the class to be instantiated, the dependencies it has, and other configuration settings.
2. **Lifecycle Management:** Spring manages the complete lifecycle of beans, including creating, initializing, using, and eventually destroying them when they are no longer needed. Beans can have callback methods like `init()` and `destroy()` for custom initialization and destruction logic.
3. **Dependency Injection:** Beans often have dependencies on other beans, and Spring performs dependency injection to inject these dependencies into a bean. This allows you to achieve loose coupling and modularization in your application.
4. **Scope:** Beans can have different scopes, defining how long a bean''s instance should live and when it should be created and destroyed. Common scopes include Singleton (one instance per container), Prototype (a new instance per request), Request (one instance per HTTP request), and Session (one instance per HTTP session).
5. **Configuration:** Beans can be defined in Spring configuration files using XML, Java configuration (with `@Configuration` and `@Bean` annotations), or through component scanning and annotations, such as `@Component`, `@Service`, `@Repository`, and `@Controller`.
6. **Inversion of Control (IoC):** The Spring container manages the creation and wiring of beans, inverting the control of object creation from your application code to the Spring container. This promotes decoupling, easier testing, and flexibility.
7. **AOP (Aspect-Oriented Programming):** Spring allows you to apply aspect-oriented programming concepts through features like AspectJ, enabling cross-cutting concerns (e.g., logging, security) to be applied to beans in a modular way.
8. **Annotation-Driven Development:** Spring supports the use of annotations to simplify bean configuration and component scanning. Annotations like `@Component`, `@Autowired`, and `@Value` reduce the need for XML configuration.

The scope of a bean determines its lifecycle and how many instances are created. Common bean scopes include:

- **Singleton:** Only one instance of the bean is created and shared within the container. This is the default scope.
- **Prototype:** A new instance is created each time the bean is requested.
- **Request:** A new instance is created for each HTTP request in a web application. This scope is used for web-specific beans.
- **Session:** A new instance is created for each HTTP session in a web application.
- **Custom Scopes:** You can define custom bean scopes to meet specific requirements.

The choice of scope depends on the use case. Singleton is suitable for stateless and shared services, while prototype is appropriate for stateful, non-shared objects. Request and session scopes are used in web applications to manage objects across HTTP requests and sessions.

In summary, in Spring, a bean is a managed Java object that is created and configured by the Spring IoC container. Beans are a fundamental concept in the framework, and understanding their lifecycle, configuration, and scope is essential for building Spring-based applications.

**Dependency Injection (DI)** is a fundamental concept in the Spring Framework and many other Inversion of Control (IoC) containers. It''s a design pattern that enables you to achieve loose coupling between components in your application by externalizing the configuration and management of their dependencies.

In the context of Spring, Dependency Injection refers to the process of providing the dependencies (e.g., other objects or services) that a class (typically a bean) requires, rather than having the class create or manage those dependencies itself. Instead of tightly coupling classes together by directly instantiating or looking up their dependencies, Spring takes on the responsibility of wiring the components together.

There are several benefits to using Dependency Injection in Spring:

1. **Reduced Coupling:** DI promotes loose coupling between classes, making your code more modular and maintainable. Classes don''t need to know the concrete details of their dependencies.
2. **Increased Testability:** With dependencies injected, it''s easier to substitute real implementations with mock or test-specific implementations during unit testing, making it easier to write and maintain tests.
3. **Configurability:** Dependency injection allows you to configure the wiring between components externally, typically through XML configuration files, Java annotations, or Java-based configuration. This means you can change the behavior of your application without modifying its source code.
4. **Reusability:** Components that rely on dependencies are more reusable because they don''t have hardcoded references to specific implementations.

In Spring, Dependency Injection is typically implemented in the following ways:

1. **Constructor Injection:** Dependencies are provided through the constructor of the class. This is the most common and recommended form of DI in Spring.
    
    ```
    
    public class MyService { private final Dependency dependency; public MyService(Dependency dependency) { this.dependency = dependency; } // ...
    }
    
    ```
    
- **Setter Injection:** Dependencies are set using setter methods. This is useful when you have optional dependencies.
- **Field Injection:** Dependencies are injected directly into fields using annotations.
    
    ```
    @Autowired
    private Dependency dependency;
    
    ```
    

Spring provides several ways to configure and manage the injection of dependencies, including XML configuration, Java-based configuration, and annotation-based configuration. You can use annotations like `@Autowired`, `@Qualifier`, and `@Resource` to specify dependencies and perform injection.

Here''s an example of how you might configure dependency injection using XML in a Spring configuration file:

```
xml

```

```xml
<bean id="myService" class="com.example.MyService">
    <property name="dependency" ref="myDependency"/>
</bean>

<bean id="myDependency" class="com.example.MyDependency"/>

```

In this example, `myService` depends on `myDependency`, and the Spring container will take care of injecting `myDependency` into `myService` when the application context is created.

Dependency Injection is a core concept in the Spring Framework and plays a crucial role in making Spring applications modular, testable, and easy to configure. It promotes best practices in software design, such as separation of concerns and the single responsibility principle.

**Spring Boot** and **Spring MVC** are both part of the broader Spring Framework ecosystem, but they serve different purposes and have distinct characteristics. Let''s explore the differences between Spring Boot and Spring MVC:

**Spring MVC:**

1. **Purpose:**
    - **Spring MVC** (Model-View-Controller) is a web application framework within the Spring Framework. It is primarily used for building web applications, including RESTful web services.
    - Spring MVC focuses on providing a structured framework for building web applications, defining controllers, views, and handling HTTP requests and responses.
2. **Configuration:**
    - Spring MVC applications typically require extensive configuration, which often involves setting up XML or Java-based configuration for components like controllers, views, and data sources.
    - Developers are responsible for configuring various aspects of the application, such as dispatcher servlets and view resolvers.
3. **Development Approach:**
    - Spring MVC follows a traditional, manual configuration approach, allowing developers to have fine-grained control over the application''s setup.
    - You need to explicitly configure beans, routes, and other components based on your application''s requirements.
4. **Integration:**
    - Spring MVC can be used with various technologies and frameworks, but it requires manual integration and configuration.
    - Developers need to set up and configure dependencies for features like security, data access, and aspect-oriented programming.

**Spring Boot:**

1. **Purpose:**
    - **Spring Boot** is an opinionated framework for building stand-alone, production-ready applications. It simplifies the setup, configuration, and development of Spring applications.
    - Spring Boot is not limited to web applications; it can be used for a wide range of applications, including web, microservices, and batch processing.
2. **Configuration:**
    - Spring Boot emphasizes convention over configuration. It provides sensible defaults and auto-configuration that can be customized if needed.
    - The framework minimizes the need for extensive manual configuration, reducing the burden on developers.
3. **Development Approach:**
    - Spring Boot encourages rapid application development with a minimum of boilerplate code. Developers can focus on writing business logic rather than extensive configuration.
    - The framework promotes the use of annotations and sensible defaults for many aspects of application development.
4. **Integration:**
    - Spring Boot simplifies integration with various technologies and frameworks by providing a wide range of "starters." Starters are pre-configured templates for building specific types of applications, such as web applications, data processing applications, and more.
    - It includes pre-configured auto-configuration options for aspects like security, data access, and logging, which can be customized as needed.

In summary, the primary difference between Spring Boot and Spring MVC lies in their focus and approach to application development. Spring MVC is a web framework within the Spring ecosystem that provides extensive control and configuration options for building web applications. Spring Boot, on the other hand, is an opinionated framework designed to streamline the development of a variety of applications, providing sensible defaults and reducing the need for manual configuration. Spring Boot is often used for quickly creating stand-alone, production-ready applications, including web applications, microservices, and more.

**RESTful web services**, often referred to simply as **REST**
 (Representational State Transfer), are a type of architectural style 
for designing networked applications. They are based on a set of 
principles and constraints that provide a scalable and stateless 
communication mechanism for distributed systems. RESTful web services 
use HTTP as the communication protocol and are widely used for building 
web APIs.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(41, 'Yearly Goals', NULL, '# Yearly Goals

- 
- 
-', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(42, 'Movie List', NULL, '# Movie List

## Want to Watch

---

[Spring, Summer, Fall, Winter... and Spring (2003)](http://www.imdb.com/title/tt0374546/)

## Watched

---', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(43, 'Europe Trip', NULL, '# Europe Trip

Date: March 21, 2018 → March 31, 2018
People: Sasha & Bill
Places: Spain, Portugal, and Italy
Status: Booked

## Things to do

- ...
- ...
- ...

## Notes

- ...
- ...
- ...', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(44, 'Vegetable Lo Mein for Two', NULL, '# Vegetable Lo Mein for Two

Tags: Dinner
Link: https://www.forkinthekitchen.com/vegetable-lo-mein-for-two/

## Ingredients

- 4 ounces [Chinese noodles](https://www.amazon.com/gp/product/B0052P1AS4/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0052P1AS4&linkCode=as2&tag=forinthekit-20&linkId=10c383c442cc85ec6122caa764a31d1e) (1/2 package)
- 1 Tablespoon oyster sauce
- 1/2 teaspoon sesame oil
- 1 Tablespoon dark soy sauce
- 1 Tablespoon light (regular) soy sauce
- 1 1/2 Tablespoons vegetable oil
- 1/2 yellow onion, thinly sliced
- 2 garlic cloves, thinly sliced
- 1 cup shredded carrots (2 medium)
- 1 bell pepper, thinly sliced
- 3-4 ounces snow peas

## Instructions

1. Boil a large pot of water; cook Chinese noodles for 1-2 minutes, stirring to unfold. Drain, rinse, and set aside.
2. In a small bowl, whisk together oyster sauce, sesame oil, and soy sauces. Set aside.
3. In a wok, heat vegetable oil over medium heat. Add onion slices and cook for 4-5 minutes until tender. Add garlic, continuing to stir for 1 minute as it becomes fragrant. Add carrots, bell pepper, and snow peas. Cook for 4-5 minutes until tender.
4. Add cooked noodles, sauce, and stir to coat. Continue to cook for 2 minutes until noodles are cooked through and sauce is distributed evenly.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(45, 'Componies and Asked quetions', NULL, '# Componies and Asked quetions

**Optum:**

Experience 1 :-

**Interview:**

After the application it took a couple of week to start with the interview process. I had a first phone screen interview with the HR and then a technical interview with a Senior Software Engineer.

**Interview Questions**

Q)  During the phone screen interview they asked me general question about my career and projects and few behavioral questions such as "Tell me about a problem you had to solve that required in-depth thought and analysis". Then I had a technical interview in which they asked me question about: • Java - they gave me a user case and asked me which classes I would create to manage it, - they asked how Pass-By-Reference and Pass-By-Value work in Java • JavaScript - How to write a function - How to access fields in a Class • SQL - They gave me few tables and ask me to retrieve some data according to a use case they gave me

Experience 2 :-

Q)  Array related questions, best time to buy sell stocks kind of questions. Project related questions and also some behavioral questions.

Experience 3 :-

**Interview**

Had 2 rounds. Questions asked were mostly on Java. and all the questions were basic although some are tough. Asked some qusns on time complexities. good experience. Asked some basic questions on other technical subjects like Os.

**Interview Questions**

- Write a program in Java

Experience 4 :-

**Application**

I applied through an employee referral. The process took 2 weeks. I interviewed at Optum

**Interview**

5 rounds of interview.

Interviewers were very helpful, interviews felt like a discussion. Focused mainly on DSA,SQL and CS fundamentals. 4 technical interviews and 1 HM round were conducted for me.

**Interview Questions**

- Questions related to tree, graphs, linked list.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(46, 'Bit bucket and Docker', NULL, '# Bit bucket and Docker

**Bit bucket is a remote repository**

Bit bucket provides teams with one place to plan projects, collaborate on code, test and deploy.

Teams choose bit bucket because it has a superior jira integration, built-in CI and CD and is free for up to 5 users. 

We used bit bucket as a version control

**Docker**

Docker is an open source platform that enables developers to build standardized, executable components that combines application source code with operating systems libraries and dependencies required to run that code in any environment.

**Jira**

We used JIRA as an issue tracker and we used to have stories assigned there by our seniors.

We used remote desktop which was VM ware.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(47, 'Springboot', NULL, '# Springboot

**Standalone application means** 

A standalone application is a software program that can be executed by itself, without the need for other programs or files to be present.

**What is springboot?**

Spring Boot represents a fusion of the lightweight Spring application framework, configuration annotations, and embedded HTTP server.

**What Spring Boot features help develop Microservices Applications?**

Primarily used for developing microservices-based applications, 

- Integrates a tool called the Actuator, which enables users to manage and monitor applications
- Provides support for embedded servers, such as Jetty and Tomcat
- Users can simply run war files, without deploying it
- Includes an Auto-Configuration functionality, allowing users to configure Spring applications automatically

**What are the key dependencies of Spring Boot?**

- spring-boot-starter-parent
- spring-boot-maven-plugin
- spring-boot-starter-test
- spring-boot-starter-security
- spring-boot-starter-actuator
- Spring-boot-starter-web

**HTTP Response codes**

1. [Informational responses](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#information_responses) (`100` – `199`)
2. [Successful responses](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#successful_responses) (`200` – `299`)
3. [Redirection messages](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#redirection_messages) (`300` – `399`)
4. [Client error responses](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#client_error_responses) (`400` – `499`)
5. [Server error responses](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status#server_error_responses) (`500` – `599`)
- HTTP Status Code 200 - OK. ...
- HTTP Status Code 301 - Permanent Redirect. ...
- HTTP Status Code 302 - Temporary Redirect. ...
- HTTP Status Code 404 - Not Found. ...
- HTTP Status Code 410 - Gone. ...
- HTTP Status Code 500 - Internal Server Error. ...
- HTTP Status Code 503 - Service Unavailable.

**Optional Class** in java:

Java introduced a new class Optional in *JDK 8*. It is a public final class and is used to deal with *NullPointerException* in Java applications. You must import *java.util* package to use this class. It provides methods that are used to check the presence of a value for the particular variable.

The purpose of the class is to provide a type-level solution for representing optional values instead of using null references.

# Advantages of Java 8 Optional

- Null checks are not required.
- No more *NullPointerException* at run-time.
- We can develop clean and neat APIs.
- No more Boilerplate code

**@Bean** ➖

In Spring Boot, the `@Bean` annotation is used to declare a bean in the application context. A bean is an object that is managed by the Spring framework, which means it''s created, configured, and maintained by Spring. The `@Bean` annotation is used to tell Spring that a method in a configuration class should be used to create and configure a bean.

Here''s an example of how `@Bean` works in Spring Boot:

@Configuration
public class AppConfig {
@Bean
public UserService userService() {
return new UserServiceImpl();
}
}

In this example, the `@Bean` annotation is used to declare a method `userService()` that returns a `UserService` object. When the Spring application context is created, it will call this method and create a new instance of `UserServiceImpl`, which is then added to the application context as a bean. The bean is then available for other components to use.

Note that `@Bean` methods can take arguments, which can be used to configure the bean. For example, you could pass in a `DataSource` object to a `@Bean` method to configure a database connection.

Overall, `@Bean` is a powerful annotation that allows you to declare and configure beans in a Spring Boot application. By using `@Bean` in combination with other Spring Boot features like auto-configuration and dependency injection, you can build complex applications quickly and easily.

**@Autowired** ➖

`@Autowired` is a Spring Boot annotation used for dependency injection. It marks a field, constructor, or method as needing a dependency to be injected into it by the Spring framework. When you use `@Autowired`, Spring Boot will automatically create an instance of the dependency and inject it into the annotated field or constructor.

Here are a few examples of how `@Autowired` works in Spring Boot:

@Service
public class UserService {
private final UserRepository userRepository;

@Autowired
public UserService(UserRepository userRepository) {
this.userRepository = userRepository;
}
}

In this example, `@Autowired`is used to inject an instance of `UserRepository`into the `UserService`
 constructor. When the `UserService` is created, Spring Boot will automatically create an instance of `UserRepository` and pass it into the constructor.

@Service
public class UserService {
@Autowired
private UserRepository userRepository;
}

In this example, `@Autowired` is used to inject an instance of `UserRepository` into the `UserService` field. When the `UserService` is created, Spring Boot will automatically create an instance of `UserRepository` and assign it to the `userRepository` field.

Overall, `@Autowired` is a powerful annotation that simplifies dependency injection in Spring Boot. By using `@Autowired` in combination with other Spring Boot features like `@Component` and `@Service`, you can build complex applications quickly and easily.

**Difference between @Bean and @Component**➖ 

`@Bean` and `@Component` are both Spring Boot annotations used to define objects in an application context, but they are used for slightly different purposes.

`@Bean` is used to explicitly declare a bean and customize its instantiation and configuration. You typically use `@Bean` in a configuration class, where you define methods that create and configure beans. When Spring Boot starts up, it reads the configuration class and uses it to create and register the beans in the application context.

Here''s an example of using `@Bean`:

@Configuration
public class AppConfig {
@Bean
public MyService myService() {
return new MyServiceImpl();
}
}

`@Component`, on the other hand, is used to automatically detect and register beans based on classpath scanning. You typically use `@Component` to annotate classes that should be treated as beans, such as services or controllers. When Spring Boot starts up, it scans the classpath for classes annotated with `@Component` and automatically registers them in the application context.

Here''s an example of using `@Component`:

@Component
public class MyService {
// ...
}

In summary, `@Bean`
 is used to explicitly declare beans and customize their creation and configuration, while `@Component`
 is used to automatically detect and register beans based on classpath scanning.

**Configuration class** ➖

Configuration classes are an important feature of Spring Boot that provide a centralized and organized way to configure an application. Here are some reasons why we need configuration classes:

1. Define Beans: Configuration classes are used to define and configure beans for an application. By defining beans in a configuration class, we can ensure that they are created and configured consistently throughout the application.
2. Centralize Configuration: By consolidating application configuration in a single configuration class, we can easily manage and modify the configuration in a single place. This makes it easier to maintain and update the application as it grows and evolves.
3. Encapsulate Configuration: Configuration classes can encapsulate complex configuration logic and dependencies, making it easier to manage and maintain. This can help simplify the overall structure of the application and reduce complexity.
4. Enable Profiles: Configuration classes can be used to define profiles, which allow us to configure different sets of beans and settings for different environments (such as development, testing, or production). This can help ensure that the application is configured correctly for each environment.

Overall, configuration classes provide a powerful and flexible way to configure Spring Boot applications. They help ensure that application configuration is organized, maintainable, and flexible enough to meet the needs of a wide range of environments and use cases.

In Spring Boot, a configuration class is a special type of class that is used to define and configure beans for an application. A configuration class is typically annotated with `@Configuration` to indicate that it contains bean definitions, and it may also contain methods annotated with `@Bean` to define individual beans.

Here is an example of a configuration class:

@Configuration
public class AppConfig {

```java
@Bean
public MyService myService() {
    return new MyServiceImpl();
}

@Bean
public MyRepository myRepository() {
    return new MyRepositoryImpl();
}
}
```

In this example, `AppConfig` is a configuration class that defines two beans: `myService` and `myRepository`. The `myService` bean is defined using a method annotated with `@Bean`, which creates a new instance of `MyServiceImpl` and returns it. Similarly, the `myRepository` bean is defined using another `@Bean` method that creates a new instance of `MyRepositoryImpl`.

Configuration classes can also be used to configure other aspects of an application, such as database connections, security settings, or logging configuration. By defining beans and other application settings in a configuration class, you can centralize your application configuration and make it easier to manage and maintain.

Overall, configuration classes are a powerful feature of Spring Boot that allow you to define and configure beans and other application settings in a structured and organized way.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(48, 'Unit Testing', NULL, '# Unit Testing

[`java.lang.Object](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/Object.html?is-external=true)`  → org.junit.Assert

The **org.junit** package contains many interfaces and classes for junit testing such as Assert, Test, Before, After etc.

**Annotations for Junit testing**

There are many other annotations, but some of the most common are the following.

- @Before identifies a method that should be run before each test
method in the class. It’s typically used to update or reset the state
needed for the test methods to run properly.
- @After identifies a method that should be run after each test method in the class. It can be used to reset variables, delete temporary
files, and so on.
- @Ignore specifies that a test method should not be run.
- @BeforeClass identifies a method that should be run once before any test methods are run.
- @AfterClass identifies a method that should be run once after all test methods are run.

## Assert class

The org.junit.Assert class provides methods to assert the program logic.

### Methods of Assert class

The common methods of Assert class are as follows:

1. **void assertEquals(boolean expected,boolean actual)**: checks that two primitives/objects are equal. It is overloaded.
2. **void assertTrue(boolean condition)**: checks that a condition is true.
3. **void assertFalse(boolean condition)**: checks that a condition is false.
4. **void assertNull(Object obj)**: checks that object is null.
5. **void assertNotNull(Object obj)**: checks that object is not null.

public class TestLogic {

@Test

public void testFindMax(){

assertEquals(4,Calculation.findMax(new int[]{1,3,4,2}));

assertEquals(-1,Calculation.findMax(new int[]{-12,-1,-3,-4,-2}));

}

}

Methods:

### assertTrue

```
public static voidassertTrue(String message,
                              boolean condition)
```

Asserts that a condition is true. If it isn''t it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) with the given message.

**Parameters:**`message` - the identifying message for the [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) (`null`
 okay)`condition` - condition to be checked

### assertTrue

```
public static voidassertTrue(boolean condition)
```

Asserts that a condition is true. If it isn''t it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) without a message.

**Parameters:**`condition` - condition to be checked

### assertFalse

```
public static voidassertFalse(String message,
                               boolean condition)
```

Asserts that a condition is false. If it isn''t it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) with the given message.

**Parameters:**`message` - the identifying message for the [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) (`null`
 okay)`condition` - condition to be checked

---

### assertFalse

```
public static voidassertFalse(boolean condition)
```

Asserts that a condition is false. If it isn''t it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) without a message.

**Parameters:**`condition` - condition to be checked

```
assertTrue("This will succeed.", true);
assertTrue("This will fail!", false);

assertFalse("This will succeed.", false);
assertFalse("This will fail!", true);
```

`assertTrue (message, value == false) == assertFalse (message, value);`

    
`assertTrue` will fail if the checked value is false, and `assertFalse` will do the opposite: fail if the checked value is true.

**In JUnit 5, to write the test code that is expected to throw an exception, we should use [*Assertions.assertThrows()*](https://junit.org/junit5/docs/current/api/org.junit.jupiter.api/org/junit/jupiter/api/Assertions.html#assertThrows-java.lang.Class-org.junit.jupiter.api.function.Executable-).** The following test is expected to throw an exception of type **`ApplicationException`** or its subtype.

```
Using Assertions.assertThrows()
@Test
void testExpectedException() {

  ApplicationException thrown = Assertions.assertThrows(ApplicationException.class, () -> {
           //Code under test
  });

  Assertions.assertEquals("some message", exception.getMessage());
```

## Demo – Expected Exception is Thrown

Given below is a very simple test that expects `NumberFormatException` to be thrown when the supplied code block is executed.

```
Both tests are PASS
@Test
void testExpectedException() {

	NumberFormatException thrown = Assertions.assertThrows(NumberFormatException.class, () -> {
		Integer.parseInt("One");
	}, "NumberFormatException was expected");

	Assertions.assertEquals("For input string: \"One\"", thrown.getMessage());
}

@Test
void testExpectedExceptionWithParentType() {

	Assertions.assertThrows(IllegalArgumentException.class, () -> {
		Integer.parseInt("One");
	});
}
```

- In `testExpectedException`, The executable code is `Integer.parseInt("One")` which throws `NumberFormatException` if method argument is not a valid numeric number. The `assertThrows()` the method expects – so this exception so the test result is `PASS`.
- In `testExpectedExceptionWithParentType`, we are executing the same code but this time we are excepting `IllegalArgumentException` which is the parent of `NumberFormatException`. This test also passes.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(49, 'git', NULL, '# git

what is Version Control?

Version Control is a system that records changes to a file or a set of files over time so that you can recall specific version later. so ideally we can put any file in the computer on version control.

Why VCS?

VCS allows you to revert files back to the previous state, revert entire project back to previous state, review changes made over time, see who last modified something that might be causing a problem, who introduced an issue and when.

[You can evaluate changes made over time, check who last edited something that might be causing a problem, who initiated a problem, and when using VCS. You can even roll back entire projects or individual files.]

What is Git?

Git is a version control system for tracking changes to a computer files and coordinating work on those files among multiple people. Git is a Distributed Version Control. So it does not necessarily rely on central server to store all the versions of the project files. Instead every user “clones” a copy of a repository (a collection of files) and has the full history of project on their own hard drive.

**Git helps you keep track of changes you made to your code. It is basically a history tab for your code.**

**Git also helps you *synchronise code* between multiple people.**

[Git is a version control system that allows several people to work on the same files while keeping track of changes made to them.Git is a Distributed Version Control.
Therefore, it is not required to store all project file versions on a single server.
Instead, each user "clones" a copy of a repository (a group of files) so that they each have a copy of the entire project''s history on their hard drive.

You can trace the modifications you''ve made to your code with the help of Git.
It acts much like the history tab for your code.]

Git Workflow ➖

Repository :- is a collection of source code.

There are 4 fundamental elements in the git work flow :-

- Working directory
- Staging area
- Local repository(Head)
- Remote repository(Master)
    
    ![1pu8607g.bmp](git%206b337a508dda40658477a3acf94ca809/1pu8607g.bmp)
    
    **Difference between git and gitflow** ➖
    
    **Git** is a free and open source distributed version control system 
    designed to handle everything from small to very large projects with 
    speed and efficiency. On the other hand, **Git Flow**
     is detailed as "*A set of git extensions to provide high-level repository operations*
    ". It provides excellent command line help and output. It is a merge based solution. It doesn''t rebase feature branches.
    
    Gitflow is **an alternative Git branching model that involves the use of feature branches and multiple primary branches**
    .', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(50, 'Behavioral questions and answers', NULL, '# Behavioral questions and answers

gap in the career

After my marriage in March 2022, I relocated internationally, which required time to secure housing, obtain my visa, and adjust to a new environment. During this period, I also needed to focus on personal matters and recovery. Throughout, I maintained my skills by working on personal projects. I am now fully ready to re-enter the workforce and bring my expertise to a new role.

[In a job interview, if they ask “If you will get a better job opportunity, will you leave this job?”, what should be the answer?](https://www.quora.com/In-a-job-interview-if-they-ask-If-you-will-get-a-better-job-opportunity-will-you-leave-this-job-what-should-be-the-answer)

 "*No,
 I''m searching for a business where I can work for a longer period of time and achieve both my personal and organizational goals."*

Certainly! Behavioral questions are often used in software engineering interviews to assess how you handle various work situations, your problem-solving skills, and your compatibility with the team and company culture. Here are some common behavioral questions with example answers:

### **1. Can you describe a time when you had to handle a difficult bug or issue in your code?**

**Example Answer:**
"In my previous role, I encountered a challenging bug in a feature I was developing, where users experienced random logouts. I systematically debugged the code, starting by replicating the issue in a test environment. After identifying that the bug was caused by an erroneous authentication token refresh mechanism, I refactored the relevant module, ensuring robust error handling and testing it rigorously. This experience taught me the importance of thorough testing and not making assumptions about code behavior."

### **2. Tell me about a time when you had to work under a tight deadline.**

**Example Answer:**
"In my last project, we had a critical deadline to launch a new product feature. I prioritized tasks, focusing on the most crucial functionalities first. I communicated regularly with my team to ensure we were all aligned and to offer help where needed. By extending my work hours and maintaining clear communication with my team and stakeholders, we successfully met the deadline. This experience highlighted the importance of time management and teamwork in high-pressure situations."

### **3. Describe a situation where you had a disagreement with a team member. How did you handle it?**

**Example Answer:**
"Once, a colleague and I had different opinions on the implementation approach for a new feature. I listened to his perspective carefully, then clearly explained my rationale. Realizing we were both aiming for optimal performance, we decided to prototype both solutions and compare them based on performance metrics. This approach not only resolved the disagreement but also fostered a spirit of collaboration and mutual respect in our team."

### **4. Can you give an example of a time when you had to learn a new technology or programming language quickly?**

**Example Answer:**
"In my previous role, there was an urgent need to integrate a new technology stack into our project. I took the initiative to learn the new stack, dedicating extra hours to study and practice. I also joined online forums and reached out to experts for guidance. Within two weeks, I was proficient enough to lead the integration, and the project was completed ahead of schedule. This experience underscored the importance of adaptability and continuous learning in the tech industry."

### **5. How do you handle prioritizing tasks when you have multiple projects to handle?**

**Example Answer:**
"I use a combination of tools and strategies to prioritize tasks effectively. For example, I create a list of tasks and rank them based on their urgency and impact. I also communicate regularly with stakeholders and team members to understand their needs and adjust priorities accordingly. In one instance, by reassessing task priorities based on team feedback, I was able to reallocate resources to complete a critical project phase two days early."

### **6.    Can you describe a time when you went above and beyond in your job?**

**Example Answer:**
"In my last position, I noticed that our new interns were struggling with our codebase. Although it wasn''t part of my job, I took the initiative to organize a series of informal training sessions for them. These sessions not only helped them get up to speed more quickly but also improved the overall team productivity. This experience was rewarding for me, as it underscored the value of mentorship and knowledge sharing."

### **Conclusion**

These questions assess various aspects of your professional behavior and skills. When answering, it''s beneficial to use the STAR method (Situation, Task, Action, Result) to structure your responses. This method helps you tell a compelling story and clearly highlight how you handled the situation.

[https://chat.openai.com/share/7166f216-9a9a-4c7d-8979-54382a49ee97](https://chat.openai.com/share/7166f216-9a9a-4c7d-8979-54382a49ee97)

1. **Tell me about a time when you had to learn a new programming language or technology quickly. How did you go about it?**
    - *Answer:* "In my previous role, we had a project that required Python, which I was not very familiar with at the time. I started by taking an online crash course over the weekend to understand the basics. Then, I spent my evenings for the next two weeks working on small projects and problems to apply what I''d learned. I also sought help from a colleague who was proficient in Python. Within a month, I was able to contribute effectively to the project."
2. **Describe a challenging problem you encountered and how you solved it.**
    - *Answer:* "In a project at my last job, we faced performance issues with our Java-based application. I initiated a code review and found that the bottleneck was due to inefficient database queries. I refactored these queries and implemented caching, which significantly improved the performance. This experience taught me the importance of considering not just the functionality but also the efficiency of the code."
3. **How do you handle disagreements with your team or supervisor?**
    - *Answer:* "In my previous team, I had a disagreement with my supervisor over the choice of a framework for a new service. I prepared a detailed comparison of the two frameworks, highlighting the pros and cons, and presented it during a team meeting. We discussed it openly, and eventually, we agreed on a framework that met our requirements best. This experience taught me the value of open communication and fact-based discussion."
4. **Can you give an example of a time when you went above and beyond in your job?**
    - *Answer:* "Once, during a critical phase of a project, our team lead had to take unexpected leave. I took the initiative to step in and coordinate the team''s efforts, ensuring that we met our deadlines without compromising on quality. I also spent extra time mentoring a new team member to speed up his onboarding process. This helped us maintain our productivity during a challenging period."
5. **Tell me about a time when you had to work under a tight deadline.**
    - *Answer:* "In my last role, we had a project that needed to be delivered within a very tight deadline. I prioritized the tasks, worked extra hours, and coordinated closely with my team to ensure efficient progress. We managed to deliver the project on time by breaking it down into smaller, manageable parts and continuously communicating our progress and challenges."
6. **Describe a situation where you had to handle a failure.**
    - *Answer:* "In one of my projects, despite thorough testing, a significant bug was found post-deployment, affecting user experience. I took responsibility, quickly gathered the team, and we worked intensively to fix the issue. We also revised our testing procedures to prevent such incidents in the future. This incident reinforced the importance of exhaustive testing and being accountable for one''s work."
7. **How do you keep yourself updated with new technologies and trends in software engineering?**
    - *Answer:* "I regularly follow several tech blogs and podcasts, and I''m an active member of a couple of online programming communities. Additionally, I set aside time each week to work on a small project using a new technology or concept I''m interested in. This approach helps me stay current and continuously learn new things."
8. **Give an example of how you have handled a conflict within a team.**
    - *Answer:* "Once, two of my team members had a conflict over the implementation approach for a feature. I facilitated a meeting where each presented their approach and we discussed the merits and drawbacks of both. This open discussion helped us find a middle ground that combined the strengths of both approaches."
9. **Can you discuss a time when you had to adapt to a significant change at work?**
    - *Answer:* "When my company decided to switch from monolithic architecture to microservices, it was a big change for our team. I took the initiative to attend a workshop on microservices and shared my learnings with the team. I also helped in re-designing some of our core services into microservices, aiding in a smoother transition for the team."
10. **Describe a time when you took the lead on a project. What was the outcome?**
    - *Answer:* "I led a project where we had to develop a new feature for our product under a tight schedule. I organized regular stand-ups, delegated tasks effectively, and ensured clear communication among team members. The project was delivered on time and was well-received by our users, which was a great achievement for the team."

These answers demonstrate your problem-solving skills,

**Q) Describe a time when you had to quickly adapt to changes in a project.**

During my tenure as a Java Developer, our team faced a major project shift when the client requested the integration of complex analytics into a Spring Boot application. This was a significant change from the initial requirements. I quickly adapted, conducting research on Java''s Stream API, ensuring our architecture could support these new demands. Collaborating closely with my team, we restructured the database and seamlessly integrated the features. This agile response not only met the client''s needs but also enhanced my skills in managing rapid change and complex problem-solving under pressure, delivering the project successfully on time.

**How do you prioritize tasks and manage your time effectively?**

I prioritize based on urgency and importance, I break down complex problems into smaller, manageable tasks, allowing for a more structured approach to problem-solving. I use time blocking to dedicate specific periods to focused work, minimizing distractions. Regular progress reviews are crucial, allowing me to adapt to changing requirements and reprioritize as needed. I maintain open communication with my team to ensure alignment and efficient collaboration. This approach enables me to effectively manage my time and meet project deadlines.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(51, 'Capgemini Project', NULL, '# Capgemini Project

**Introduction**➖

Hi name !

Thank you for this opportunity to have a interview for this position with the company.

I am Sneha Patil , recently I moved to the Ireland with my Husband, currently I Stamp 1G Spouse visa. I worked 1.8 years for Capgemini as a Software Developer.

**What is your weakness?**

I think being an introvert can be a disadvantage for me sometimes.

**What is your strength?**

i learn 

**Capgemini Project** ➖

I joined Capgemini as a full stack developer, there I had 3 to 4 months of training on full stack. I did couple of projects with springboot in the backend, angular in the frontend and sql for database. After completion of training , I got assigned to the project within a month which was financial service based application. We started working on it but unfortunately that project got discontinued.

After some days I got assigned to the another project which was customer service based application for UK based client. Initially we worked on some bug fixes and then we  started working on couple of tasks like 

1) Available credit details

2)Add and delete auth buyer funtionality 

- In  Available credit details there were 3 subtasks
1. credit limit
2. owner of the credit card

1. credit limit will shows the credit limit and if credit limit exceeds then chrages applies

1. owner of the credit card shows personal details of the owner 
- add authbuyer
- delete authbuyer

created method for add authorized buyer to invite a new individual to access the Authorized Buyer.

```
When we create a add method, its state is set to INVITED, and sends an invitation email.
Then the individual must click ACCEPT INVITATION to gain access to the Authorized Buyers.

and created a delete method for delete the account permanently.

```

When I joined capgemini I got assigned to the project. So It’s been more than a year now ,so I thought it’s better to explain about  one of my personal projects.

 It’s a Health Care System. In this project I have used Spring boot for java development API and Hibernate which provides the mappings that we add between objects and tables.
It ensures that data is stored/retrieved from the database based on the mappings. and Junit for Unit testing.

 this is the project of the system consists of various diagnostic centers, with their own tests.. The system can be accessed  by the Admin and the customer . Admin has control over adding, removing and updating diagnostic centers and the tests under them.and Customer needs to register and ha can makes an appointment after selecting a proper date-time as well as the test and diagnostic center. The appointment will be confirmed only after the admin approves it. 

**Class description and role:**

1.Diagnostic center : Each center will be created by a admin. 

2.Blood Test : Each test will be present under diagnostic center.

3.Appointment : Each appointment will have information of the user and the test, for the diagnostic center. Each appointment has to be approved by the admin.

4.User : Depending on the type of user, a user role specific menu will be shown.

**Flow of the project:**

In this project Customer will register by providing Username, password, Phone number and role will be default as customer.  Once User registered ,he gets list of diagnostic centers, and he selects one of them . After selecting center, user can select the test he wants from the list of available tests in that center. He can 

After submission of the form , the new appointment will be added in the appointment list. So that admin can approve it. and After he can view the apppointment. results are avilable

Admin has to login with correct credentials. once he logged in he can approve appointment, and update when the results are available.  add center, remove center, add and remove test.

**Testing**

In this project I have used Junit testing which is an open source Unit [Testing](https://www.guru99.com/software-testing.html) 
Framework for JAVA.

Unit Testing is used to identify defects early in software development cycle.

Health care System for health care administrators to handle diagnostic centers and patients blood test appointments and results.
Using Login endpoint to start a session, Admin can create and update diagnostic centers  information. And then look at the update test reports. Patient Appointment can also be created and modified using the API’s.

This project has a 4 classes of end points', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(52, 'Must Revision before interview', NULL, '# Must Revision before interview

**Lambda Expression** : A lambda expression is a short block of code which takes in parameters and returns a value
.
 Lambda expressions are similar to methods, but they do not need a name 
and they can be implemented right in the body of a method.

The `map(Function mapper)`
 method takes a [Function](https://javarevisited.blogspot.sg/2018/01/what-is-functional-interface-in-java-8.html)
,
 technically speaking, an object of java.util.function.Function 
interface. This function is then applied to each element of Stream to 
convert it into the type you want.

You can also experiment with using more `map()`
 functions or more `filter()`
 calls to make the composition longer and more sophisticated. You can even play with the `collect()`
 method to collect the result in a [list](https://javarevisited.blogspot.com/2011/05/example-of-arraylist-in-java-tutorial.html)
, [set](https://javarevisited.blogspot.com/2016/01/3-ways-to-loop-over-set-or-hashset-in-java.html)
, [map](http://www.java67.com/2017/08/top-10-java-hashmap-interview-questions.html) 
or any other collection.

**enum**

**exception throw and throws keyword**

The “throws” keyword is used to declare the exception with the method signature. The throw keyword is used to explicitly throw the exception. The try-catch block is used to handle the exceptions thrown by others.

The `throws`
 keyword allows exceptions to be propagated in 
the call stack. When a method declares that it throws an exception, it 
is not required to handle the exception.

Only checked exceptions are required to be thrown using the `throws`
 keyword. Unchecked exceptions don’t need to be thrown or handled explicitly in code.

## Java Throw vs Throws

The table below lists the difference between the `throw` and `throws` keywords in Java:

| Throw | Throws |
| --- | --- |
| Used within a method (or constructor) | Used with method (or constructor) signature |
| Used to throw an exception explicitly | Used to declare exceptions |
| Can only throw a single exception | Can declare multiple exceptions |
| Followed by a throwable instance | Followed by an exception class name |
| Cannot be used to propagate checked exceptions by itself | Can be used to propagate checked exceptions by itself |

**What are the benefits of a multiprocessor system?**

The advantages of the multiprocessing system are: **Increased Throughput**

 − By increasing the number of processors, more work can be completed in
 a unit time. Cost Saving − Parallel system shares the memory, buses, 
peripherals etc. Multiprocessor system thus saves money as compared to 
multiple single systems.

**Explain demand paging?**

Demand Paging is a technique in which a page is usually brought into the main memory only when it is needed or demanded by the CPU. Initially, only those pages are loaded that are required by the process immediately.

**What is virtual memory?**

Virtual memory is an OS feature that enables a computer to solve a shortage of physical memory by temporarily transferring data from RAM to disk storage (hard drive or SSD). This process only occurs when RAM runs low and when that shortage prevents the computer from completing some task. In that case, the PC frees up necessary RAM by swapping infrequently used data over to a storage device.

**What is deadlock?**

In an operating system, a deadlock **occurs when a process or thread enters a waiting state because a requested system resource is held by another waiting process**
, which in turn is waiting for another resource held by another waiting process.

**Design patterns?**

In the top-down approach to management, a team or project manager makes decisions, which then filter down through a hierarchical structure. Managers gather knowledge, analyze it, and draw actionable conclusions. They then develop processes that are communicated to and implemented by the rest of the team. You may hear this style of management referred to as “command and control” or “autocratic leadership.”

When approaching a project from the top down, higher-level decision-makers start with a big picture goal and work backward to determine what actions different groups and individuals will need to take in order to reach that goal.

**Why SpringBoot?**

- In Spring Boot, everything is auto configured; no manual configurations are needed.
- It offers annotation-based spring application
- Eases dependency management
- It includes Embedded Servlet Container

**Dependency injection:**

Dependency Injection (DI) is a design pattern commonly used in the Spring framework for implementing Inversion of Control (IoC). In Spring, DI refers to the process of providing the necessary dependencies of a class from an external source, typically through constructor injection or setter injection.

**Annotations**

- **@GetMapping:** It maps the **HTTP GET** requests on the specific handler method. It is used to create a web service endpoint that **fetches** It is used instead of using: **@RequestMapping(method = RequestMethod.GET)**
- **@PostMapping:** It maps the **HTTP POST** requests on the specific handler method. It is used to create a web service endpoint that **creates** It is used instead of using: **@RequestMapping(method = RequestMethod.POST)**
- **@PutMapping:** It maps the **HTTP PUT** requests on the specific handler method. It is used to create a web service endpoint that **creates** or **updates** It is used instead of using: **@RequestMapping(method = RequestMethod.PUT)**
- **@DeleteMapping:** It maps the **HTTP DELETE** requests on the specific handler method. It is used to create a web service endpoint that **deletes** a resource. It is used instead of using: **@RequestMapping(method = RequestMethod.DELETE)**
- **@PatchMapping:** It maps the **HTTP PATCH** requests on the specific handler method. It is used instead of using: **@RequestMapping(method = RequestMethod.PATCH)**
- **@RequestBody:** It is used to **bind** HTTP request with an object in a method parameter. Internally it uses **HTTP MessageConverters** to convert the body of the request. When we annotate a method parameter with **@RequestBody,** the Spring framework binds the incoming HTTP request body to that parameter.
- **@ResponseBody:** It binds the method return value to
the response body. It tells the Spring Boot Framework to serialize a
return an object into JSON and XML format.
- **@PathVariable:** It is used to extract the values
from the URL. It is most suitable for the RESTful web service, where the URL contains a path variable. We can define multiple @PathVariable in a method.
- **@RequestParam:** It is used to extract the query parameters form the URL. It is also known as a **query parameter**. It is most suitable for web applications. It can specify default values if the query parameter is not present in the URL.
- **@RequestHeader:** It is used to get the details about the HTTP request headers. We use this annotation as a **method parameter**. The optional elements of the annotation are **name, required, value, defaultValue.** For each detail in the header, we should specify separate annotations. We can use it multiple time in a method
- **@RestController:** It can be considered as a combination of **@Controller** and **@ResponseBody** annotations**.** The @RestController annotation is itself annotated with the
@ResponseBody annotation. It eliminates the need for annotating each
method with @ResponseBody.
- **@RequestAttribute:** It binds a method parameter to
request attribute. It provides convenient access to the request
attributes from a controller method. With the help of @RequestAttribute
annotation, we can access objects that are populated on the server-side.

### 

**Hibernate**

The hbm2ddl.auto property is used to create the table in the database automatically.

The EntityManager API is used **to access a database in a particular unit of work**
.

**Why Entity Manager?**

 It is used to create and remove persistent entity instances, to find 
entities by their primary key identity, and to query over all entities.

In order to create an *EntityManager*
, we must explicitly call *createEntityManager()*
 in the *EntityManagerFactory.*

**What is Session?**

The Session interface is the main tool used to communicate with Hibernate. It provides an API enabling us to **create, read, update, and delete persistent objects**
. The session has a simple lifecycle. We open it, perform some operations, and then close it.

### Querying for Entities

Furthermore, we can make use of JPQL to query for entities. We''ll invoke *getResultList()* to execute them.

Of course, we can use the *getSingleResult()* if the query returns just a single object:

```
public List<?> queryForMovies() {
    EntityManager em = getEntityManager();
    List<?> movies = em.createQuery("SELECT movie from Movie movie where movie.language = ?1")
      .setParameter(1, "English")
      .getResultList();
    return movies;
}
```

**RollBack**

Hibernate **rolls-back the database transaction**
. Database handles rollback, thus removing newly created object.

**Methods in Entity Manager**

- persist - Make an instance managed and persistent.
- merge - Merge the state of the given entity into the current persistence context.
- remove - Remove the entity instance.
- find - Find by primary key. Search for an entity of the specified
class and primary key. If the entity instance is contained in the
persistence context, it is returned from there.
- clear - Clear the persistence context, causing all managed entities
to become detached. Changes made to entities that have not been flushed
to the database will not be persisted.
- detach – this is similar to the clear method, only addition is the
entity which previously referenced the detached object will continue to
do so.
- contains – it checks if the managed entity belongs to the current persistence context.
- getLockMode – get the current lock mode for entity instance.
- setProperty – set an entity manager property or hint.
- getProperties – get the properties and hints associated with the entity manager.
- createQuery - Create an instance of Query for executing a Java Persistence query language statement.
- getTransaction - Return the resource-level EntityTransaction object.
- getEntityManagerFactory – provides the entity manager factory for the entity manager.
1. `Persistence.createEntityManagerFactory` will provide EntityManagerFactory instance using the `persistence-unit` that we have provided in the `persistence.xml` file
2. `entityManagerFactory.createEntityManager()` will create EntityManager instance for us to use. Every time we call `createEntityManager()` method, it will return a new instance of EntityManager.
3. `entityManager.getTransaction().begin()` method first pulls the transaction from current persistence context and then begins the transaction using begin() method.
4. `entityManager.persist(employee)` is used to persist the employee object in the database.
5. `entityManager.getTransaction.commit()` method is used to fetch the transaction and then to commit the same transaction. This will commit all the changes to database.
6. `entityManager.find()` is used to find an entity in the database using primary key.
7. If you want to write a custom query, we can use `entityManager.createQuery()` method for it. Important point to note here is that the createQuery()
method will have name given in the entity class and not the actual table name.
8. `entityManager.remove()` should be used only when we have to remove an entity from the database.
9. `entityManager.close()` is used to close the entity manager. Similarly `entityManagerFactory.close()` is to close the `EntityManagerFactory`. We should close these resources as soon as we are done with them.

**Annotations in Hibernate**

**@Persistence Unit :**

Annotation Type PersistenceUnit. **Expresses a dependency on an EntityManagerFactory and its associated persistence unit**
.

**@Repository:**   which is used to indicate that the class provides the mechanism for storage, retrieval, 
update, delete and search operation on objects.
.

**SQL :**

**Normalization**: Normalization is **the process to eliminate data redundancy and enhance data integrity in the table**
.
 Normalization also helps to organize the data in the database. It is a 
multi-step process that sets the data into tabular form and removes the 
duplicated data from the relational tables

**DROP AND TRUNCATE :**

Drop is used to drop the whole table or database.

Truncate is used to removes all the data from the table.

**DDL : Data Definition Language actually consists of the SQL commands that can be used to define the database.** 

create, drop, alter, truncate, comment, rename.

**DML : Data Manipulation Language, it manipulates the data.**

insert, delete, update, lock

**DQL : Data Query Language , it is used to get the data from the database.**

select

**DCL : Data Control Language, these commands deals with controls of the database.**

grant, revoke

**TCL (Transaction Control Language): TCL commands are used to control the execution of a transaction.** 

commit, rollback, savepoint, set transaction.

## The SQL GROUP BY Statement

The `GROUP BY` statement groups rows that have the same values into summary 
rows, like "find the number of customers in each country".

The `GROUP BY` statement is often used with aggregate functions (`COUNT()`, 
`MAX()`, 
`MIN()`, `SUM()`, 
`AVG()`) to group the result-set by one or more columns.

## The SQL LIKE Operator

The `LIKE` operator is used in a 
`WHERE` clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the 
`LIKE` operator:

- The percent sign (%) represents zero, one, or multiple characters
- The underscore sign (_) represents one, single character

| LIKE Operator | Description |
| --- | --- |
| WHERE CustomerName LIKE ''a%'' | Finds any values that start with "a" |
| WHERE CustomerName LIKE ''%a'' | Finds any values that end with "a" |
| WHERE CustomerName LIKE ''%or%'' | Finds any values that have "or" in any position |
| WHERE CustomerName LIKE ''_r%'' | Finds any values that have "r" in the second position |
| WHERE CustomerName LIKE ''a_%'' | Finds any values that start with "a" and are at least 2 characters in length |
| WHERE CustomerName LIKE ''a__%'' | Finds any values that start with "a" and are at least 3 characters in length |
| WHERE ContactName LIKE ''a%o'' | Finds any values that start with "a" and ends with "o" |

## SQL JOIN

A `JOIN` clause is used to combine rows from two or more tables, based on 
a related column between them.

## Different Types of SQL JOINs

Here are the different types of the JOINs in SQL:

- `(INNER) JOIN`: Returns records that have matching values in both tables
- `LEFT (OUTER) JOIN`: Returns all records from the left table, and the matched records from the right table
- `RIGHT (OUTER) JOIN`: Returns all records from the right table, and the matched records from the left table
- `FULL (OUTER) JOIN`: Returns all records when there is a match in either left or right table

![](https://www.w3schools.com/sql/img_innerjoin.gif)

![](https://www.w3schools.com/sql/img_rightjoin.gif)

![](https://www.w3schools.com/sql/img_leftjoin.gif)

![](https://www.w3schools.com/sql/img_fulljoin.gif)', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(53, 'Revision before interview', NULL, '# Revision before interview

- **public static void main**

When the main method is declared public, it means that it can also be
 used by code outside of its class, due to which the main method is 
declared public. The word static used when we want to access a method 
without creating its object, as we call the main method, before creating
 any class objects. The word void indicates that a method does not 
return a value. main () is declared as void because it does not return a
 value. main is a method; this is a starting point of a Java program.

- **String[] args**

It is an array where each element of it is a string, which has been 
named as “args”. If your Java program is run through the console, you 
can pass the input parameter, and the main () method takes it as input.

- **System.out.println();**

This statement is used to print text on the screen as output, where a
 system is a predefined class, and out is an object of the PrintWriter 
class defined in the system. The method println prints the text on the 
screen with a new line. You can also use the print () method instead of 
the println() method. All Java statement ends with a semicolon.

### Java vs Java EE Comparison Table

Following is the Comparison Table Between Java vs Java EE

| **JAVA** | **JAVA EE** |
| --- | --- |
| Java or Java SE provides basic functionality like defining basic types and objects. | Java EE provides APIs for running large-scale applications. |
| SE is a normal Java Specification. | EE is built upon JAVA SE. Provides functionalities like web applications, servlets etc |
| It consists of class libraries, virtual machines, deployment environment programming. | Java EE is a structured application with separate Client, Business, Enterprise layers. |
| Mostly used to develop APIs for Desktop Applications like antivirus software, game etc. | Mainly used for web applications |
| Suitable for beginning Java developers | Suitable for experienced Java developers who build enterprise-wide applications. |
| User authentication functionality is not provided with Java SE | Java EE comes within the built User authentication |

Q) Differentiate recursion and iteration

Recursion and iteration are two different approaches used in programming to solve a problem.

Recursion is a technique where a function calls itself with a modified input until it reaches a base case, where the function returns a value without making any further recursive calls. In other words, recursion involves breaking down a problem into smaller and smaller subproblems until the subproblems become simple enough to be solved without further recursion.

On the other hand, iteration involves repeatedly executing a set of statements or a loop until a specific condition is met. The loop executes a fixed number of times or until a condition becomes false.

The key difference between recursion and iteration is the way they approach problem-solving. Recursion breaks down a problem into subproblems and solves them using a recursive function, while iteration uses loops to repeat a set of instructions until the desired result is achieved.

In summary, recursion involves a function calling itself with a modified input until it reaches a base case, while iteration involves repeating a set of instructions using loops until a condition is met.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(54, 'JavaScript', NULL, '# JavaScript

**What are the different data types present in javascript?**

To know the type of a JavaScript variable, we can use the **typeof** operator.

**1. Primitive types**

**String** - It represents a series of characters and is written with quotes. A string can be represented using a single or a double quote.

Example :

```
var str = "Vivek Singh Bisht"; //using double quotes
var str2 = ''John Doe''; //using single quotes
```

- **Number** It represents a number and can be written with or without decimals.

Example :

```
var x = 3; //without decimal
var y = 3.6; //with decimal
```

- **BigInt** This data type is used to store numbers which
are above the limitation of the Number data type. It can store large
integers and is represented by adding “n” to an integer literal.

Example :

```
var bigInteger =  234567890123456789012345678901234567890;
```

- **Boolean** It represents a logical entity and can have
only two values : true or false. Booleans are generally used for
conditional testing.

Example :

```
var a = 2;
var b =  3;
var c =  2;
(a == b) // returns false
(a == c) //returns true
```

- **Undefined** When a variable is declared but not assigned, it has the value of undefined and it’s type is also undefined.

Example :

```
var x; // value of x is undefined
var y = undefined; // we can also set the value of a variable as undefined
```

- **Null** It represents a non-existent or a invalid value.

Example :

```
var z = null;
```

- **Symbol** It is a new data type introduced in the ES6 version of javascript. It is used to store an anonymous and unique value.

Example :

```
var symbol1 = Symbol(''symbol'');
```

- typeof **of primitive types** :

```
typeof "John Doe" // Returns "string"
typeof 3.14 // Returns "number"
typeof true // Returns "boolean"
typeof 234567890123456789012345678901234567890n // Returns bigint
typeof undefined // Returns "undefined"
typeof null // Returns "object" (kind of a bug in JavaScript)
typeof Symbol(''symbol'') // Returns Symbol
```

**2. Non-primitive types**

- Primitive data types can store only a single value. To store multiple and complex values, non-primitive data types are used.
- Object - Used to store collection of data.
- Example:

```
// Collection of data in key-value pairs

var obj1 = {
   x:  43,
   y:  "Hello world!",
   z: function(){
      return this.x;
   }
}

// Collection of data as an ordered list

var array1 = [5, "Hello", true, 4.1];
```

> Note- It is important to remember that any data type that is not a primitive data type, is of Object type in javascript.
> 

**Q)** **Is javascript a statically typed or a dynamically typed language?**

JavaScript is a **dynamically** typed language. In a dynamically typed language, the type of a variable is checked during **run-time** 
in contrast to a statically typed language, where the type of a variable is checked during **compile-time.**', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(55, 'Debugging', NULL, '# Debugging

How to debug Java line by line?

You can **set a breakpoint, at then step line-by-line in the debugger**.
 This works by running your program in debug mode (the easiest way is to
 launch it with the Debug button as opposed to the Run button). In the 
Java source code view, you can click in the line number gutter to enable
 breakpoints.

How do you debug a line of code?

Run to a breakpoint in code You can also **select
 the line and then select F9, select Debug > Toggle Breakpoint, or 
right-click and select Breakpoint > Insert Breakpoint**. The 
breakpoint appears as a red dot in the left margin next to the line of 
code. The debugger suspends execution just before the line runs.

What are the 4 steps to debugging?

**Isolate the source of the bug**. 

**Identify the cause of the bug**.

**Determine a fix for the bug**. 

**Apply the fix and test it**.

What are the 5 different methods for debugging?

**There are 6 debugging techniques in an embedded system.**

- Simplify the complex data.
- Divide and conquer.
- Slow down the process.
- Change only one variable at a time.
- Creating off-line models.
- start from a known-good state.

What are the 7 debug steps?

**7 Steps to Debug Efficiently and Effectively**

- 1) Always Reproduce the Bug Before You Start Changing Code.
- 2) Understand Stack Traces.
- 3) Write a Test Case that Reproduces the Bug.
- 4) Know Your Error Codes.
- 5) Google! Bing! Duck! Duck! Go!
- 6) Pair Program Your Way Out of It.
- 7) Celebrate Your Fix.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(56, 'Wander woman', NULL, '# Wander woman

Date Created: November 23, 2022 4:14 PM', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(57, 'Spring Databases', NULL, '# Spring Databases

Date Created: February 6, 2023 7:15 PM
Status: To Do', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(58, 'Untitled', NULL, '# Untitled

Date Created: November 19, 2022 11:08 AM

# Tasks

- [ ]  ...
- [ ]  ...', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(59, 'Refactoring,', NULL, '# Refactoring,

Date Created: February 6, 2023 7:15 PM
Status: To Do', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(60, 'Automation test tools', NULL, '# Automation test tools

Date Created: February 7, 2023 11:36 AM
Status: To Do', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(61, 'Behavioral questions', NULL, '# Behavioral questions

Date Created: February 13, 2023 7:19 PM
Status: To Do', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(62, 'Http client', NULL, '# Http client

An HTTP client is a software component or library that facilitates communication with web servers via the HTTP protocol. In the context of Java, an HTTP client is used to send HTTP requests to a server and receive HTTP responses from the server. This functionality is essential for interacting with web services, REST APIs, and other network-based resources.

### **Key Concepts and Components of an HTTP Client**

1. **HTTP Requests**: The client creates and sends HTTP requests to a specified URL. These requests can be of different types, such as GET, POST, PUT, DELETE, etc., depending on the action required.
2. **HTTP Responses**: After sending a request, the client receives an HTTP response from the server. This response includes status codes (e.g., 200 for success, 404 for not found), headers, and optionally a body containing the requested data or the result of the operation.
3. **Headers**: Both requests and responses can include headers, which provide additional information about the request or response. Common headers include **`Content-Type`**, **`Authorization`**, and **`User-Agent`**.
4. **Body**: The body of the request or response can contain data in various formats, such as JSON, XML, or plain text. The body is typically used in POST and PUT requests to send data to the server, and in responses to receive data from the server.

### **Common Java HTTP Client Libraries**

1. **HttpURLConnection**: The built-in Java library for sending HTTP requests. It''s part of the **`java.net`** package and provides basic functionality for HTTP communication.
    
    ```java
    javaCopy code
    URL url = new URL("http://example.com"); HttpURLConnection connection =(HttpURLConnection) url.openConnection(); connection.setRequestMethod("GET"); intresponseCode = connection.getResponseCode();
    
    ```
    
2. **Apache HttpClient**: A more advanced and flexible HTTP client library from the Apache HttpComponents project. It supports features like connection pooling, cookie management, and handling complex request/response scenarios.
    
    ```java
    javaCopy code
    CloseableHttpClient httpClient = HttpClients.createDefault(); HttpGet request =new HttpGet("http://example.com"); CloseableHttpResponse response =httpClient.execute(request);
    
    ```
    
3. **OkHttp**: A popular third-party HTTP client for Java and Android, known for its performance and ease of use.
    
    ```java
    javaCopy code
    OkHttpClient client = new OkHttpClient(); Request request = new Request.Builder() .url("http://example.com") .build(); Response response =client.newCall(request).execute();
    
    ```
    
4. **Spring RestTemplate**: A higher-level abstraction provided by the Spring Framework for interacting with RESTful web services. It simplifies many of the complexities involved in making HTTP requests.
    
    ```java
    javaCopy code
    RestTemplate restTemplate = new RestTemplate(); String result =restTemplate.getForObject("http://example.com", String.class);
    
    ```
    

### **Use Cases for an HTTP Client**

- **Consuming REST APIs**: HTTP clients are often used to interact with RESTful services, fetching data, or sending updates.
- **Web Scraping**: HTTP clients can be used to retrieve web pages for data extraction.
- **Microservices Communication**: In a microservices architecture, services often communicate with each other over HTTP.
- **Testing and Monitoring**: HTTP clients can be used to automate testing of web services and monitor their availability and performance.

Using an HTTP client effectively requires understanding the HTTP protocol and the specific library''s API. Each library offers different features and levels of abstraction, so choosing the right one depends on the requirements of your application.', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(63, 'My tasks', NULL, '# My tasks

tasks', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(64, 'Home views', NULL, '# Chat GPT

1) Study Plan for coding ➖

2) Get the project ideas ➖
3) Create a new project ', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(65, 'Chat GPT', NULL, '# Chat GPT

1) Study Plan for coding ➖

2) Get the project ideas ➖
3) Create a new project 
4) add', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(66, 'Sub Page', NULL, '### Title: Bubble Sort Algorithm\n\n### Body:\nBubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. Because it only uses comparisons on adjacent elements to operate, it is a comparison sort.\n\nHere''s a breakdown of how bubble sort works:\n\n1.  **Comparison:** Starting from the beginning of the list, compare the first two elements.\n2.  **Swapping:** If the first element is greater than the second element (or less than, for descending order), swap them.\n3.  **Iteration:** Move to the next pair of adjacent elements and repeat the comparison and swapping process.\n4.  **Pass Completion:** At the end of the first pass, the largest (or smallest) element will be in its correct position at the end of the list.\n5.  **Repetition:** Repeat the entire process for the remaining unsorted elements until the entire list is sorted.\n\n**Example:**\n\nLet''s say you have the following list: `[5, 1, 4, 2, 8]`\n\n*   **First Pass:**\n    *   (5, 1) -> (1, 5)\n    *   (5, 4) -> (4, 5)\n    *   (5, 2) -> (2, 5)\n    *   (5, 8) -> (5, 8) (No change)\n    *   List becomes: `[1, 4, 2, 5, 8]`\n*   **Second Pass:**\n    *   (1, 4) -> (1, 4) (No change)\n    *   (4, 2) -> (2, 4)\n    *   (4, 5) -> (4, 5) (No change)\n    *   List becomes: `[1, 2, 4, 5, 8]`\n*   **Third Pass:** No swaps occur, so the list is sorted.\n\n**Optimized Bubble Sort:**\n\nThe bubble sort algorithm can be optimized by stopping the algorithm if the inner loop didn''t cause any swap.\n\n**Advantages of Bubble Sort:**\n\n*   Simple to understand and implement\n*   Does not require extra memory space\n*   Stable sorting algorithm\n\n**Disadvantages of Bubble Sort:**\n\n*   Inefficient for large datasets\n*   Quadratic time complexity\n\n**Time Complexity:**\n\n*   Best Case: O(n) - when the array is already sorted.\n*   Average Case: O(n^2)\n*   Worst Case: O(n^2) - when the array is sorted in reverse order.\n*   Space Complexity: O(1)\n\n**Pseudocode:**\n\n```\nprocedure bubbleSort(list : array of sortable items)\n  n = length(list)\n  repeat\n    swapped = false\n    for i = 1 to n-1 inclusive do\n      /* if this pair is out of order */\n      if list[i-1] > list[i] then\n        /* swap them and remember something changed */\n        swap( list[i-1], list[i] )\n        swapped = true\n      end if\n    end for\n  until not swapped\nend procedure\n```\n\n**Python Code Example:**\n\n```python\ndef bubble_sort(list_):\n    n = len(list_)\n    for i in range(n-1):\n        for j in range(n-i-1):\n            if list_[j] > list_[j+1]:\n                list_[j], list_[j+1] = list_[j+1], list_[j]\n    return list_\n\n# Example usage\nmy_list = [5, 1, 4, 2, 8]\nsorted_list = bubble_sort(my_list)\nprint(sorted_list)  # Output: [1, 2, 4, 5, 8]\n```\n\n### Conclusion:\n\nBubble sort is a basic sorting algorithm that''s easy to grasp and implement. However, its inefficiency makes it unsuitable for sorting large datasets. While it serves as a good educational tool for understanding sorting concepts, more efficient algorithms like merge sort or quicksort are typically preferred for real-world applications.\n```"', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(67, 'Java Interview Questions', NULL, '# Home views
testing', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(76, 'Ops-Home', NULL, 'Home', 16);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(77, 'test1-Home', NULL, '', 17);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(87, 'Bubble Sort', NULL, 'vedveds', 1);
INSERT INTO "notes"("id", "title", "emoji", "text", "folder_id") VALUES(88, 'about tonight', NULL, '# about to', 1);