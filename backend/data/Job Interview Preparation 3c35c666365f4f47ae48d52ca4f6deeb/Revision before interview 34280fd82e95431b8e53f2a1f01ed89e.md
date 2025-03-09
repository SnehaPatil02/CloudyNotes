# Revision before interview

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

In summary, recursion involves a function calling itself with a modified input until it reaches a base case, while iteration involves repeating a set of instructions using loops until a condition is met.