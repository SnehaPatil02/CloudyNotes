# Interview preparation for IBM

**Link for Kubernetes:**[https://www.edureka.co/blog/interview-questions/kubernetes-interview-questions/](https://www.edureka.co/blog/interview-questions/kubernetes-interview-questions/)

**HTML, CSS & JavaScript:** [https://www.hirist.tech/blog/top-25-html-css-javascript-interview-questions-and-answers/](https://www.hirist.tech/blog/top-25-html-css-javascript-interview-questions-and-answers/)

**why do you want to work for IBM?**

 I’m really excited about the idea of working at IBM because it’s a place where innovation truly happens. I love the thought of developing backend services and APIs that power AI-driven solutions, knowing they have a real-world impact. Also, the chance to collaborate with top-tier experts in such a creative and team-focused environment is something I find inspiring. On top of that, IBM’s global reach and emphasis on growth make it the perfect place to expand my skills and explore new opportunities, while contributing to projects that make a difference.

OR 

I am interested in joining IBM because of its strong reputation as a global leader in innovation, particularly in areas like AI, data science, and cloud computing. I have always admired how IBM applies advanced technologies to solve real-world problems. IBM's commitment to research and continuous development resonates deeply with my personal goals of learning, growing, and contributing to groundbreaking projects. Additionally, I appreciate IBM's emphasis on diversity, work-life balance and fostering a competitive yet supportive environment that aligns perfectly with my own values and work style.  

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

When you create a `String` using a literal (e.g., `"Hello"`), Java looks for the string in the **String Constant Pool** (also called the **String Intern Pool**). If the literal already exists in the pool, Java will return a reference to the existing string, avoiding duplication. If it doesn't exist, Java creates a new string object in the pool.

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
- **Use Case:** When you want to see the changes on the remote branch before integrating them into your local branch. It gives you the opportunity to inspect the differences and manually merge them later if needed.