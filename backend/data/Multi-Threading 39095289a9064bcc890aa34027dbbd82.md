# Multi-Threading

Implementing multithreading in Java involves creating multiple threads to execute tasks concurrently within a program. This can significantly improve the performance of your application, especially when dealing with tasks that are naturally parallel or when trying to maintain responsiveness in user interfaces. Here's a basic guide to implementing multithreading in Java:

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

In this example, the **`MyRunnable`** class implements the **`Runnable`** interface and its **`run`** method. A **`Thread`** object is created with an instance of **`MyRunnable`**, and the thread is started with **`thread.start()`**. When the thread starts, it executes the code inside the **`run`** method.