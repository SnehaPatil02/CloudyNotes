# Spring Framework (depth):

**Dependency Injection or IoC :**

**Spring IoC (Inversion of Control) Container is the core of Spring Framework. It creates the objects, configures and assembles their dependencies, manages their entire life cycle. The Container uses Dependency Injection(DI) to manage the components that make up the application.**

IoC is also known as *dependency injection* (DI). It is a process whereby objects define dependencies, that is, the other objects they work with, only through constructor arguments, arguments to a factory method, or properties that are set on the object instance after it is constructed or returned from a
factory method. The container then *injects* those dependencies when it creates the bean. This process is fundamentally the inverse, hence the name *Inversion of Control* (IoC), of the bean itself controlling the instantiation or location of its dependencies by using direct construction of classes,

The `org.springframework.beans` and `org.springframework.context` packages are the basis for  Spring Framework's IoC container. The [`BeanFactory`](http://static.springsource.org/spring-framework/docs/current/javadoc-api/org/springframework/beans/factory/BeanFactory.html) interface provides an advanced configuration mechanism capable of managing any type of object.[`ApplicationContext`](http://static.springsource.org/spring-framework/docs/current/javadoc-api/org/springframework/context/ApplicationContext.html) is a sub-interface of `BeanFactory.` It adds easier integration with Spring's AOP features; message resource handling (for use in internationalization), event publication; and application-layer specific contexts such as the `WebApplicationContext` for use in web applications.

In short, the `BeanFactory` provides the configuration framework and basic functionality, and the  `ApplicationContext` adds more enterprise-specific functionality. The  `ApplicationContext` is a complete superset of the `BeanFactory`, and is used exclusively in this chapter in descriptions of Spring's IoC container.

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

In the Spring Framework, a bean is an object that is managed by the Spring IoC (Inversion of Control) container. Beans are the backbone of a Spring application and represent the components that form the basis of your application's logic. 

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

These annotations are used to let configuration be included based on the presence and value of a Spring Environment property.