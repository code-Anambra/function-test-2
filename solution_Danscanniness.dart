// NAME :       OKOYE DANIEL AMANDIANEZE
// SCHOOL :   SOLUTION INOVATION DISTRICT
// EXAM : 3
// DATE :  06/02/2024



// 1. What is a function in Dart?
// ANSWER:
// In Dart, a function is a reusable block of code that performs a specific task. Functions allow //you to organize your code, make it more readable, and avoid duplicating code. In Dart, //functions can be either named or anonymous, and they can have parameters and return //values.
// Here's a basic example of a named function in Dart:
// Named function
int add(int a, int b) {
  return a + b;
}

void main() {
  // Calling the add function
  int result = add(3, 5);
  print('The sum is: $result');
}
// Example of  Anonymous function
void main() {
  // Anonymous function (lambda)
  var multiply = (int a, int b) => a * b;

  // Calling the anonymous function
  int result = multiply(3, 5);
  print('The product is: $result');
}
// 2. How do you declare a function in Dart?. 
// ANSWER :

// In Dart, you can declare a function using the following syntax: returnType, //functionName and Parameters. 
//Eg.
//  returnType functionName(parameters) {
  // Function body }

int add(int a, int b) {
  return a + b;
}
void main() {
  int result = add(3, 5);
  print('The sum is: $result');
}

// 3. What is the purpose of the main () function in Dart?.
// ANSWER:
// In Dart, the main () function serves as the entry point of a Dart program. When you //run a Dart application, the Dart runtime starts executing the code from the main () //function. This function is required in every Dart program, and it acts as the starting //point for the program's execution.

void main(List<String> arguments) {
  // Code to be executed when the program starts
  print('Hello, Dart!');
  print('Arguments: $arguments');
}

// 4. Explain the difference between a named function and an anonymous function.
//ANSWER:
// In Dart, the main difference between named functions and anonymous functions lies // in their declaration and usage.
// Named Function:
// A named function is a function that has a name associated with it.
// It is declared using the returnType functionName(parameters) { /* //function body */ } syntax.
// Named functions are typically used when you want to reuse the same block // of code in multiple places.  
//  Anonymous Function (Lambda or Function Literal):
// An anonymous function is a function without a name.
// It can be assigned to a variable, passed as an argument to another function, or //returned as a value from another function.
// It is declared using the (parameters) { /* function body */ } syntax.
// Example of a named function:
int add(int a, int b) {
  return a + b;
}
void main() {
  int result = add(3, 5);
  print('The sum is: $result');
}
var multiply = (int a, int b) {
  return a * b;
};
// Example of an anonymous function
void main () {
  var result = multiply(3, 5);
  print('The product is: $result');
}

// 5. What is a return type in Dart functions? 
// ANSWER; 
// In Dart functions, the return type specifies the type of value that the function will return. //Every Dart function has a return type, which can be explicitly declared or left implicit using //the var keyword. The return type is specified just before the function name in the function //declaration. 
// 6. How can you pass parameters to a Dart function?
// ANSWER: 

// In Dart, you can pass parameters to a function by including them within the //parentheses of the function declaration. There are two main types of parameters: //positional parameters and named parameters. 

// 7. Describe the difference between positional and named parameters. 
// ANSWER:

//In Dart, the difference between positional and named parameters lies in how //arguments are passed to a function and how they are matched with the //parameters in the function declaration.
// Positional Parameters:
// 1. Order Matters:
// Positional parameters are specified in the order they appear in the //function's parameter list.
// When calling a function with positional parameters, you provide arguments // in the same order as the parameters.
// 2. Syntax:
// Positional parameters are defined within the parentheses without any //additional symbols.
// Example:
void printDetails(String name, int age) {
  print('Name: $name, Age: $age');
}

void main() {
  printDetails('Alice', 25);
  printDetails('Bob', 30);
}
// Named Parameters:
// 1. Order Doesn't Matter:
// Named parameters are specified by name when calling the function, and //the order in which you provide them does not matter.
// This allows for more flexibility and improves code readability.
// 2. Syntax:
//Named parameters are defined within curly braces {} in the function //declaration.
// Example:
void printDetails({String name, int age}) {
  print('Name: $name, Age: $age');
}

void main() {
  printDetails(name: 'Alice', age: 25);
  printDetails(age: 30, name: 'Bob'); // Order doesn't matter with named parameters
}
//In summary, positional parameters rely on the order of arguments, and named //parameters allow you to specify parameters by name, making the code more //readable and providing flexibility, especially when dealing with functions that //have many parameters or optional parameters. Additionally, named parameters //support default values, allowing you to provide a fallback when a value is not //explicitly provided during the function call.

// 8.What is the significance of the arrow (=>) syntax in Dart functions?
//ANSWER: 
//In Dart, the arrow (=>) syntax is used in function expressions, also known as "fat arrow" //syntax. This concise syntax is primarily used for writing short and simple functions, //especially when creating anonymous functions or lambda functions.
int multiply(int a, int b) => a * b;
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using arrow syntax for a function with block body
  numbers.forEach((int number) => {
    print(number)
  });
}

// 9. How do you define default parameter values in Dart functions?
// ANSWER: 
//In Dart, you can define default parameter values in functions, allowing you to provide a //default value that will be used if the caller does not explicitly pass a value for that //parameter. This feature is particularly useful when you want to make certain parameters// //optional and provide sensible default values.
//Here's an example of a function with default parameter values:
void greet(String name, {String greeting = 'Hello', int times = 1}) {
  for (int i = 0; i < times; i++) {
    print('$greeting, $name!');
  }
}

void main() {
  greet('Alice');              // Uses default greeting and times
  greet('Bob', greeting: 'Hi'); // Uses custom greeting, default times
  greet('Charlie', times: 3);   // Uses default greeting, custom times
}


// 10.Explain the concept of optional parameters in Dart functions.
// ANSWER
//In Dart, optional parameters are parameters that can be omitted when calling a function. //This concept is useful when you want to define functions with flexible arguments or //provide default values for certain parameters.
//In Dart, optional parameters are parameters that can be omitted when calling a //function. This concept is useful when you want to define functions with flexible //arguments or provide default values for certain parameters.
//There are two types of optional parameters in Dart:
// Positional Optional Parameters:
//Positional optional parameters are defined within square brackets [] in the function //signature.
//They are specified by their position in the argument list when calling the function.
//If you don't provide a value for a positional optional parameter, it will default to //null or the value you specify as the default.
// Named Optional Parameters:
//Named optional parameters are enclosed in curly braces {} in the function //signature.
// They are specified by their name followed by a colon (:) when calling the function.
// Named optional parameters allow you to skip parameters and provide them in any //order.
// If you don't provide a value for a named optional parameter, it will default to null //or the value you specify as the default.

// 11. What is the purpose of the void keyword in Dart functions?
//ANSWER:
//In Dart, the void keyword is used in function declarations to specify that the function does //not return a value. When a function's return type is void, it means the function performs //some actions but does not produce any result that needs to be captured or used by the //caller.

// 12. How can you define a function inside another function in Dart? What is this //called?
// ANSWER:
//In Dart, you can define a function inside another function. This is known as a //"nested function" or "inner function". A nested function is simply a function //defined within the scope of another function. The inner function has access to //variables and parameters of the outer function.
//Here's an example of defining a nested function in Dart:
void outerFunction() {
  print('Outer function');
 void innerFunction() {
    print('Inner function');
  }
  innerFunction();
}
void main() {
  outerFunction(); // Call the outer function
}

// 13. What is a higher-order function in Dart?
// ANSWER:
//In Dart, a higher-order function is a function that either takes one or more //functions as arguments (parameters) or returns a function as its result. In other //words, a higher-order function can accept other functions as arguments, or it can //produce a function as its output. This concept is common in functional //programming and provides a powerful way to abstract and manipulate behavior in //your code.
//Here's a simple example of a higher-order function that takes another function as //an argument:
void higherOrderFunction(Function function) {
  print('Executing higher-order function');
  function(); // Call the function passed as an argument
}
void myFunction() {
  print('Executing myFunction');
}
void main () {
  higherOrderFunction(myFunction); // Passing myFunction as an argument
}
	// 14. Explain the difference between functions and methods in Dart.
// ANSWER:
//In Dart, the terms "function" and "method" are often used interchangeably, but //there are subtle differences between them:
// 1. Function:
//A function in Dart is a block of code that performs a specific task and can //be called independently of any class.
//Functions in Dart can be standalone (defined outside of any class) or static // (defined within a class using the static keyword).
//Dart functions can take parameters, have a return type, and be //asynchronous (using async and await).
// 2. Method:
// A method in Dart is a function that is associated with an object or class. It is //invoked on an instance of the class and operates on the data associated with that // instance.
// Methods are defined within a class and can access instance variables and other //methods of the class.
// Dart methods are divided into two types: instance methods and static methods.
// Instance Method: An instance method operates on an instance of the //class and can access instance variables and other instance methods. They do //not have the static keyword.
// Static Method: A static method belongs to the class itself rather than to // //instances of the class. They are defined with the static keyword and can //only access static variables and other static methods of the class.

// 15. How do you use the return keyword in Dart functions?
// ANSWER:
//In Dart, the return keyword is used to exit a function and optionally provide a //value as the result of the function's execution. When the return statement is //encountered in a function, it immediately exits the function, and control is returned //to the caller. If a value is provided with return, it is passed back to the caller as the //result of the function call.


int add(int a, int b) {
  return a + b;
}
void main() {
  int result = add(3, 5);
  print('The sum is: $result');
}

// 16. What is a function signature, and why is it important?
// ANSWER:

//A function signature is a unique identifier for a function that typically includes the //function's name, the types of its parameters, and its return type. It provides a concise //summary of the function's interface, allowing developers to understand how to use the //function without needing to inspect its implementation details.
//The function signature is important for several reasons:
// 1. Identification: Function signatures uniquely identify functions within a //codebase. They help distinguish between different functions, including overloaded //functions with the same name but different parameter types.
// 2. Type Safety: By specifying the types of parameters and return values, function //signatures help enforce type safety. They ensure that only compatible arguments //are passed to the function and that the function returns the expected type of value.
// 3. Documentation: Function signatures serve as documentation for the function's // interface. They provide developers with information about the function's inputs //and outputs, helping them understand how to use the function correctly.
// 4. Interoperability: When working with libraries or APIs, understanding function //signatures is crucial for interoperability. It ensures that functions are called //correctly and consistently across different parts of the codebase.
// 5. Tooling Support: Function signatures are used by development tools such as // IDEs and static analyzers to provide code completion, type checking, and error //detection. These tools rely on function signatures to provide accurate and helpful // suggestions to developers.
// Overall, function signatures play a vital role in defining the interface of functions and // facilitating their usage within a codebase. They improve code readability, //maintainability, and reliability by providing a clear and concise description of a //function's behavior.
 

// 17. How can you make a function in Dart asynchronous?
// ANSWER: 
//In Dart, you can make a function asynchronous by using the async and await //keywords. Asynchronous functions allow you to perform time-consuming operations, //such as fetching data from a network or accessing a file, without blocking the //execution of the program.
//Here's how you can make a function asynchronous:
// 1. Use the async keyword before the function body to declare it as an //asynchronous function.
// 2. Use the await keyword before calling asynchronous operations inside the //function. This keyword waits for the operation to complete before proceeding to //the next line of code.
// Here's an example of an asynchronous function that simulates fetching data from a //network:
import 'dart:async';

Future<int> fetchData() async {
  // Simulate fetching data after 2 seconds
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

void main() async {
  print('Fetching data...');
  int data = await fetchData(); // Wait for the data to be fetched
  print('Data fetched: $data');
}


// 18.  Describe the use of the async, await, and Future keywords in asynchronous //functions.
// ANSWER:
//In Dart, asynchronous programming is achieved using the async, await, and //Future keywords. These keywords allow you to write non-blocking code for //performing asynchronous operations, such as fetching data from a network, //accessing files, or executing long-running computations. Here's an overview of //how these keywords are used in asynchronous functions:
// 1. async Keyword:
// The async keyword is used to declare a function as asynchronous. It //indicates that the function will perform asynchronous operations and may //return a Future or Stream object.
// An asynchronous function can use the await keyword to pause its //execution until an asynchronous operation is completed.
// 2. await Keyword:
// The await keyword is used inside an asynchronous function to pause its //execution until an asynchronous operation is completed and retrieve the result of the operation.
// When using await, the function waits for the operation to complete before //continuing with the next line of code.
// The result of the awaited operation is unwrapped from its Future or Stream //container and returned directly.

// 3. Future Class:
// The Future class represents a future result of an asynchronous operation. It allows //you to work with values that are not yet available but will be available at some //point in the future.
//Futures can be returned from asynchronous functions to represent the result of the //computation.
//You can use the then method to register a callback that will be invoked when the //future completes.
//In summary, async is used to declare a function as asynchronous, await is used to //wait for the result of an asynchronous operation, and Future is used to represent //the result of an asynchronous computation. Together, these keywords and classes //enable you to write asynchronous code in Dart that is non-blocking and efficient, //allowing for better resource utilization and responsiveness in your applications.

// 19. How do you call a function defined in another Dart file?
// ANSWER:
//To call a function defined in another Dart file, you need to follow these steps:
// 1. Import the Dart File:
//First, you need to import the Dart file containing the function you want to //call. You can use the import keyword followed by the path to the Dart file.
//If the file is in the same directory, you can just provide the file name. If it's in //a different directory, you need to specify the path relative to the current file //or use a package import if it's part of a package.
//Example:
// import 'another_file.dart';
// 2. Call the Function:
// Once you have imported the file, you can call the function defined in that file as if //it were defined in the current file.
//Use the function name followed by parentheses () to call the function, optionally //passing any required arguments.
// Example:
import 'another_file.dart';

void main() {
  greet('Alice'); // Calling the function defined in another_file.dart
}
// In this example, the main.dart file imports the another_file.dart, which //contains the greet function. Then, the main function calls the greet //function to print a greeting message to the console.

