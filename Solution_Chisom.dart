//1. What is a function in Dart?
//A function in Dart is a reusable block of code that performs a specific task.

// Example of a function in Dart
void greet() {
  print("Hello, Dart!");
}

//2. How do you declare a function in Dart?
//To declare a function in Dart, you use the following syntax:
returnType functionName(parameters) {
    // function body
}

// Example of declaring a function in Dart
void greet(String name) {
  print("Hello, $name!");
}

//3. What is the purpose of the main() function in Dart?
//The main() function in Dart is the entry point of a Dart program. It is where the program execution begins.

// Example of main() function in Dart
void main() {
  print("This is the main function in Dart.");
}

// 4.Explain the difference between a named function and an anonymous function.
//A named function is declared with a specific name, while an anonymous function is declared without a name, often used as arguments in other functions or assigned to variables.

// Example of a named function
void namedFunction() {
  print("This is a named function.");
}
// Example of an anonymous function
var anonymousFunction = () {
  print("This is an anonymous function.");
};

//5.What is a return type in Dart functions?
//The return type in Dart functions specifies the type of value the function will return. It can be specified before the function name.

// Example of a function with a return type
int add(int a, int b) {
  return a + b;
}

//6. How can you pass parameters to a Dart function?
//You can pass parameters to a Dart function by listing them inside the parentheses in the function declaration.

// Example of a function with parameters
void greet(String name) {
  print("Hello, $name!");
}
// Calling the function with a parameter
greet("Alice");

//7.Describe the difference between positional and named parameters.
//Positional parameters are passed based on their order, while named parameters are explicitly identified by name.

// Example of positional parameters
void printOrderDetails(String productName, int quantity, double price) {
  print("Product: $productName, Quantity: $quantity, Price: $$price");
}

// Example of named parameters
void printOrderDetails({String productName, int quantity, double price}) {
  print("Product: $productName, Quantity: $quantity, Price: $$price");
}

//8. What is the significance of the arrow (=>) syntax in Dart functions?
//The arrow (=>) syntax in Dart functions is a shorthand for one-line functions, where it directly returns the result of the expression.

// Example of arrow syntax in Dart functions
int square(int number) => number * number;

//9. How do you define default parameter values in Dart functions?
//Default parameter values in Dart functions are specified using the assignment operator (=) in the parameter list.

// Example of a function with default parameter values
void greet({String name = "World"}) {
  print("Hello, $name!");
}

// 10. Explain the concept of optional parameters in Dart functions.
//Optional parameters in Dart functions are achieved by enclosing them in square brackets in the parameter list.

// Example of optional parameters in Dart functions
void greet(String name, [String greeting]) {
  if (greeting != null) {
    print("$greeting, $name!");
  } else {
    print("Hello, $name!");
  }
}

//11. What is the purpose of the void keyword in Dart functions?
//The void keyword in Dart functions indicates that the function does not return any value.

// Example of a function with void return type
void logMessage(String message) {
  print(message);
}

//12. How can you define a function inside another function in Dart? What is this called?
//You can define a function inside another function in Dart, and this is called a nested function.

// Example of a nested function in Dart
void outerFunction() {
  void innerFunction() {
    print("This is the inner function.");
  }
  innerFunction();
}

//13. What is a higher-order function in Dart?
//A higher-order function in Dart is a function that takes one or more functions as parameters or returns a function.

// Example of a higher-order function in Dart
void executeFunction(void Function() function) {
  function();
}

void printMessage() {
  print("This is a message.");
}

void main() {
  executeFunction(printMessage);
}

//14. Explain the difference between functions and methods in Dart.
//In Dart, functions are standalone, while methods are functions associated with a class or object.

// Example of a function in Dart
void printMessage() {
  print("This is a function.");
}

// Example of a method in Dart
class MyClass {
  void printMessage() {
    print("This is a method.");
  }
}

//15. How do you use the return keyword in Dart functions?
//The return keyword in Dart is used to specify the value that a function should return.

// Example of a function with the return keyword
int add(int a, int b) {
  return a + b;
}

//16. What is a function signature, and why is it important?
//A function signature includes the function's name, parameter types, and return type. It's important for defining and using functions correctly.

// Example of a function signature in Dart
int add(int a, int b) {
  return a + b;
}
//The function signature here is int add(int a, int b). It consists of the function name, parameter types, and return type. It's important for defining and using functions correctly.

//17. How can you make a function in Dart asynchronous?
//To make a function asynchronous in Dart, you use the async keyword in the function declaration.

// Example of an asynchronous function in Dart
Future<void> fetchData() async {
  // Simulating fetching data from an API
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched!");
}

//18. Describe the use of the async, await, and Future keywords in asynchronous functions.
//Async functions use the await keyword to pause execution until a Future is complete. The Future keyword is used to represent a potential value or error.

// Example of using async, await, and Future in Dart
Future<void> fetchData() async {
  // Simulating fetching data from an API
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched!");
}

void main() {
  print("Fetching data...");
  fetchData();
  print("Other tasks...");
}

//19. How do you call a function defined in another Dart file?
//To call a function defined in another Dart file, you need to import that file using the import statement and then use the function as usual.

// File: utils.dart
void printMessage() {
  print("This is a message.");
}

// File: main.dart
import 'utils.dart';

void main() {
  printMessage(); // Calling the function defined in utils.dart
}