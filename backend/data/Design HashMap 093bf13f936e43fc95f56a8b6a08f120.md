# Design HashMap

A hashing collision **occurs when two different inputs produce the same hash value**.

 This can happen for various reasons, such as using a weak or flawed hashing algorithm, having a small hash space, or having a large number of inputs. 

### **Handling Collisions**

Handling collisions efficiently is crucial to maintain the operational speed of a hash table. There are several strategies to manage collisions:

1. **Chaining**: This is the method described in the custom **`MyHashMap`** example. In chaining, each bucket at a particular index starts a linked list (or a more sophisticated data structure). All entries mapping to the same index are stored in this list. Operations such as insertion, deletion, and retrieval involve searching through the list at the corresponding index.
2. **Open Addressing**: In open addressing, all elements are stored within the hash table itself. When a collision occurs, the hash table seeks the next available slot using a process called probing. Common probing techniques include:
    - **Linear Probing**: It places a new key in the next available bucket. This can lead to clustering, where a group of adjacent buckets gets filled up.
    - **Quadratic Probing**: It uses a quadratic polynomial (computed based on the number of attempts) to find an empty bucket, reducing clustering.
    - **Double Hashing**: It uses a second hash function to determine the interval between probes, offering high performance with less clustering.
3. **Rehashing**: This involves using a secondary hash function if the first results in a collision. This can be considered a hybrid technique or a specific strategy under open addressing depending on the implementation.