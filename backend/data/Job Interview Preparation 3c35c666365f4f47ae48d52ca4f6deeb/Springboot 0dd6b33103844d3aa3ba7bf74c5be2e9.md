# Springboot

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

In Spring Boot, the `@Bean` annotation is used to declare a bean in the application context. A bean is an object that is managed by the Spring framework, which means it's created, configured, and maintained by Spring. The `@Bean` annotation is used to tell Spring that a method in a configuration class should be used to create and configure a bean.

Here's an example of how `@Bean` works in Spring Boot:

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

Here's an example of using `@Bean`:

@Configuration
public class AppConfig {
@Bean
public MyService myService() {
return new MyServiceImpl();
}
}

`@Component`, on the other hand, is used to automatically detect and register beans based on classpath scanning. You typically use `@Component` to annotate classes that should be treated as beans, such as services or controllers. When Spring Boot starts up, it scans the classpath for classes annotated with `@Component` and automatically registers them in the application context.

Here's an example of using `@Component`:

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

Overall, configuration classes are a powerful feature of Spring Boot that allow you to define and configure beans and other application settings in a structured and organized way.