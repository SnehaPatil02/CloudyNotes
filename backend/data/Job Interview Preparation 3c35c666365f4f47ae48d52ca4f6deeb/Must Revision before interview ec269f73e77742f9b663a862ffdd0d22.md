# Must Revision before interview

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

Furthermore, we can make use of JPQL to query for entities. We'll invoke *getResultList()* to execute them.

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
| WHERE CustomerName LIKE 'a%' | Finds any values that start with "a" |
| WHERE CustomerName LIKE '%a' | Finds any values that end with "a" |
| WHERE CustomerName LIKE '%or%' | Finds any values that have "or" in any position |
| WHERE CustomerName LIKE '_r%' | Finds any values that have "r" in the second position |
| WHERE CustomerName LIKE 'a_%' | Finds any values that start with "a" and are at least 2 characters in length |
| WHERE CustomerName LIKE 'a__%' | Finds any values that start with "a" and are at least 3 characters in length |
| WHERE ContactName LIKE 'a%o' | Finds any values that start with "a" and ends with "o" |

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

![](https://www.w3schools.com/sql/img_fulljoin.gif)