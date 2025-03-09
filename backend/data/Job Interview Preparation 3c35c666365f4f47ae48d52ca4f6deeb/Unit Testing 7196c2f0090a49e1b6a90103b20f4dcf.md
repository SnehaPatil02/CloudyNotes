# Unit Testing

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

Asserts that a condition is true. If it isn't it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) with the given message.

**Parameters:**`message` - the identifying message for the [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) (`null`
 okay)`condition` - condition to be checked

### assertTrue

```
public static voidassertTrue(boolean condition)
```

Asserts that a condition is true. If it isn't it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) without a message.

**Parameters:**`condition` - condition to be checked

### assertFalse

```
public static voidassertFalse(String message,
                               boolean condition)
```

Asserts that a condition is false. If it isn't it throws an
 [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) with the given message.

**Parameters:**`message` - the identifying message for the [`AssertionError`](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/AssertionError.html?is-external=true) (`null`
 okay)`condition` - condition to be checked

---

### assertFalse

```
public static voidassertFalse(boolean condition)
```

Asserts that a condition is false. If it isn't it throws an
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
- In `testExpectedExceptionWithParentType`, we are executing the same code but this time we are excepting `IllegalArgumentException` which is the parent of `NumberFormatException`. This test also passes.