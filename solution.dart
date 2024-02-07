
Name: Anumba Chinelo M. 07

Exam_3

1.What is a function in Dart?
/*Functions in Dart are powerful tools for performing specific tasks or sets of tasks. Dart, a programming 
language created by Google, is commonly utilized for developing web, mobile, and server applications. 

The type of Functions are as follows: Named, Anonymous Constructors, Getters and Setters, 
Top-Level Functions, Function Parameters, Function Expressions.*/

// Named function
void greet(String name) {
  print("Good Morning David $name!");
}

// Anonymous function assigned to a variable
var add = (int a, int b) {
  return a + b;
};

// Class with named and unnamed constructors, getter, and setter
class Rectangle {
  double _width, _height;

  // Named constructor
  Rectangle.named(this._width, this._height);

  // Unnamed constructor
  Rectangle() : _width = 0, _height = 0;

  // Getter
  double get area => _width * _height;

  // Setter
  set dimensions(List<double> dimensions) {
    if (dimensions.length == 2) {
      _width = dimensions[0];
      _height = dimensions[1];
    } else {
      print("Invalid number of dimensions.");
    }
  }
}

void main() {
  // Calling the named function
  greet("Nzeamalu");

  // Calling the anonymous function using the variable
  var result = add(70, 90);
  print("The sum is: $result");

  // Using the Rectangle class
  var rectangle1 = Rectangle.named(8, 20);
  print("Area of rectangle1: ${rectangle1.area}");

  var rectangle2 = Rectangle();
  rectangle2.dimensions = [5, 15];
  print("Area of rectangle2: ${rectangle2.area}");
}

2.How do you declare a function in dart?
In Dart, you can declare a function using the following examples:
void printMessage(String message) 
{
  print(message);
}
void main() {
  // Calling the named function
  printMessage("Hi David!");
}

// 3.What is the purpose of the main() function in Dart?

/* When using Dart, the main() function plays a crucial role as the starting point of the program. 
As you launch the application, the Dart runtime immediately begins executing code from this particular function. 
Essentially, it is the fundamental function */

// To give you a clearer understanding, let's take a look at the simple framework of a Dart program featuring the main() function:
void main() 
{
  // Code to start the program
}

// 4.Explain the difference between a named function and an anonymous function.

/* In the world of Dart, the distinction between a named function and an anonymous function centers around how they are defined and utilized: 
Named Function: */

// To create a named function, one must use the syntax 

returnType functionName(parameters) 
{ /* function body */ } . 

// These types of functions are assigned a specific name and designed to be reused in various parts of the code. 
// They can easily be invoked by calling their designated name.
// An anonymous function, also known as a function literal or closure, is declared using the syntax 
(parameters) 
{ /* function body */ }. 

/* Unlike regular functions, it does not have a designated name and can be assigned to variables. 
This flexibility makes it a popular choice for short-lived tasks, as well as for being used as arguments in other functions.*/
/* To recap, named functions have a designated name and can be invoked by that name, encouraging reuse. 
In contrast, anonymous functions lack a specific name and are typically utilized in situations where a brief
function is required */

// 5.What is a return type in Dart functions?
/* When using Dart functions, the return type determines the kind of value that the function will generate. 
It also serves to indicate that a function does not yield a value if it has a void return type. 
The declaration of the return type precedes the funct */

// Take a look at the following format for declaring a function with a return type:

returnType functionName(parameters) 
{
  // Function body
  // Code to perform the task
}
6.How can you pass parameters to a Dart function?
In Dart, passing parameters to a function is as simple as enclosing them in parentheses after the function name. Parameters enable you to input values that the function can utilize in executing a designated action. The syntax generally looks like this:
returnType functionName(parameter1Type parameter1, 
parameter2Type parameter2, ...) 
{
  // Function body
  // Code to perform the task using parameters
}
Example:
void greet(String name, int age) 
{
  print("Good morning, $name! You are $age years old.");
}
void main() {
  greet("David", 25);
  greet("Oluoma", 18);
}

 // 7.Describe the difference between positional and named parameters.

/* In Dart, function parameters can be classified into two main types: positional parameters and named parameters.
The distinction lies in how you pass arguments to a function. */

// Positional Parameters:

/* Declaration: Positional parameters are defined by their position in the function parameter list. 
They are the most common type of parameters. */

// Syntax: 
ReturnType functionName(Type param1, Type param2, ...) 
{ /* function body */ }

//Usage: When calling the function, you pass arguments in the same order as the parameters are declared.

void printDetails(String name, int age, double height) {
  print("Name: $name, Age: $age, Height: $height");
}
void main() {
  // Calling the function with positional arguments
  printDetails("David", 25, 5.8);
}

// 8.What is the significance of the arrow (=>) syntax in Dart functions?

/* The arrow (=>) syntax in Dart is a convenient way to write compact functions, making it a popular choice for one-line functions or 
expressions. It's especially helpful when the function body contains only one expression. */

//Here is the general syntax for arrow functions:
returnType functionName(parameters) => expression;

// 9.How do you define default parameter values in Dart functions?
/* In Dart, you have the flexibility to set default values for function parameters by assigning them a default value in the function declaration.
This convenient feature allows you to set a predefined value that will be used in case the caller doesn't provide a value for that specific parameter */

// Here is an example to simply use the = syntax.
void greet({String name = "Guest", int age = 0})
{
  print("Hello, $name! You are $age years old.");
}
void main() 
{
  // Calling the function without providing values for parameters
  greet(); // Output: Hello, Guest! You are 12 years old.
  // Calling the function with specific values for parameters
  greet(name: "David", age: 30); 
}

// 10.Explain the concept of optional parameters in Dart functions.

/* In Dart, the usage of optional parameters allows for the creation of versatile functions that can be called with or without certain parameters. 
Optional parameters fall into two categories: positional optional parameters and named optional parameters.*/

// Example of Positional Option Parameter:
void printDetails(String name, [int age = 30, double height = 157.0]) 
{
  print("Name: $name, Age: $age, Height: $height");
}
void main() 
{
  // Calling the function with and without optional parameters
  printDetails("David");          
 printDetails("Elomma", 30);      
 printDetails("Oluoma", 25, 170.0); 
}
// Example of Named Optional Parameter:
void printDetails({String? name, int age = 25, double height = 129.0}) {
  print("Name: $name, Age: $age, Height: $height");
}
void main() 
{
  // Calling the function with and without optional parameters
  printDetails(name: "David");
  printDetails(name: "Cynthia", age: 30);
  printDetails(name: "Onyeka", height: 6.0);
}

// 11.What is the purpose of the void keyword in Dart functions?
/* When working with Dart, the void keyword is crucial. It signifies that a function will not yield a value upon completion. 
In simple terms, a function with a void return type will successfully complete its designated task, but will not provide a usable result.*/

// Syntax Example:
void functionName(parameters) {
  // Function body
  // Code to perform the task
}

// 12.How can you define a function inside another function in Dart? What is this called?

/* In Dart, nested functions, also called "functions inside functions, allow you to define a function within another one. 
This is all possible thanks to Dart's support for treating functions as first-class citizens. This allows you to declare functions with*/

//Here's an example of defining a nested function in Dart:
void outerFunction() 
{
  print("Outer function");
  void innerFunction() 
  {
    print("Inner function");
  }
    innerFunction(); // Call the nested function
}
    void main() 
  {
    outerFunction();
  }

// 13.What is a higher-order function in Dart?

/* Dart features a powerful concept known as higher-order functions. These types of functions go beyond the traditional idea of a function, 
as they can take in one or more functions as inputs and even return a function as a result. This makes Dart's function */

// There are two main types of higher-order functions:

// Functions that take functions as parameters:
// These functions accept one or more functions as arguments, allowing you to customize their behavior by passing different functions.
// Example:
int operate(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}
void main() {
  int result = operate(5, 3, (a, b) => a + b);
  print(result);
}

// Functions that return functions:
// These functions create and return a new functions, making a way to create functions in a robust way.
// Example:

Function multiplyBy(int factor)
{
  return (int number) => number * factor;
}
void main()
{
  final multiplyBy3 = multiplyBy(3);
  print(multiplyBy3(5)); // Output: 15
}

// 14.Explain the difference between functions and methods in Dart.
/* Difference between methods and functions is clear: 
methods operate within a class's framework and have access to its context, while functions stand alone and are not bound by any class.*/

// Example of method (instance)
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}
var calc = Calculator();
print(calc.add(3, 4)); // Calling the instance method

// Example of function
int add(int a, int b) 
{
  return a + b;
}

// 15.How do you use the return keyword in Dart functions?
/* When programming in Dart, the return keyword serves as a powerful tool for indicating the desired output of a function.
Not only does it mark the end of the function's operation, but it also allows for the provision of a return value to be sent back to the caller.
this makes it crutial element in achieving desired results and enhancing the functionality of our code. */

// Here is an example that uses return keyward
int add(int a, int b) {
  int sum = a + b;
  return sum;
}
void main() 
{
  int result = add(3, 4);
  print(result); // Output: 7
}

// 16.What is a function signature, and why is it important?
/* a function signature serves as a streamlined overview of a function, encompassing vital details about its composition.
It provides vital information such as the function's given title, the type of value it returns, and the types of data it requires as input.
This vital component plays a crutial role in establishing the function's interface and providing guidance on its correct application.*/

// The general syntax of a function signature in Dart is as follows:
returnType functionName(parameterType1 parameter1, parameterType2 parameter2, ...) {
  // Function body
  // Code to perform the task
}
/* To sum up, a function signature plays a crucial role in outlining the expectations for both the function and its callers. 
By providing necessary details about the input, output, and behavior of the function, it helps improve code documentation, readability,
and maintain type safety during the develoment process.*/

// 17.How can you make a function in Dart asynchronous?

/* In Dart, adding the async keyword can transform a function into an asynchronous powerhouse. 
This means the function can execute tasks without delaying the entire program, such as making network requests, 
reading files, or waiting for timers. By declaring */

// Here's working example of asynchronous function:
Future<void> fetchData() async 
{print("Fetching data..."); 
await Future.delayed(Duration(seconds: 2)); // Simulating an asynchronous delay 
print("Data fetched!"); } 
void main() 
{ fetchData(); print("Main function continues executing..."); }

// 18.Describe the use of the async, await, and Future keywords in asynchronous functions.

/* When writing in Dart, understanding how the keywords async, await, and Future function is crucial for mastering asynchronous programming. 
These powerful tools work in harmony to allow for the execution of tasks without stalling the main thread of the program*/

// Here's an overview of their use:
// a. async Keyword:
/* The async keyword is used in function declarations to indicate that a function is asynchronous.
Functions marked as async can perform asynchronous operations and use the await keyword inside the function body.*/

// Syntax:
Future<void> myAsyncFunction() async 
{
  // Asynchronous operations using 'await'
}
// b. await Keyword:
/* The await keyword is used inside an async function to pause the execution of the function until
the awaited asynchronous operation is complete.*/

// It can only be used inside an async function.

Syntax:
Future<void> fetchData() async 
{
  var result = await someAsyncOperation();
  // Code after 'await' resumes when 'someAsyncOperation' is complete
}
// c. Future Class:
/* The Future class represents a value or error that will be available at some time in the future.
Asynchronous functions return a Future to indicate that they perform asynchronous operations.
The Future class allows you to handle the result of asynchronous operations, including handling errors.*/

// Syntax:
Future<int> calculateSquare(int number) async {
  return number * number;
}
/* The Future class is also used with the async and await keywords to handle asynchronous tasks and compose them in a sequential manner.

In summary, the async keyword is used to declare a function as asynchronous, the await keyword is used to pause 
the execution of an asynchronous function until a task is complete, and the Future class is used to represent 
the result of asynchronous operation and handle their completion. Together, these keywords and classes form the foundation of dart's
asynchronous programming model */

// 19.How do you call a function defined in another Dart file?

/* To call a function defined in another Dart file, you need to import that Dart file into the file where you want to use the function. 
Dart uses the import statement for this purpose.*/ 

// Here's a step-by-step guide:

// i.   Create the Dart file with the function you want to call: Let's say you have a Dart file named functions.dart with the following content:

// functions.dart
int add(int a, int b) {
  return a + b;
}
// ii.  Import the Dart file in the file where you want to use the function: 
// iii  In the Dart file where you want to call the add function, use the import statement to include the functions.dart file. 

//For example:
// main.dart
import 'functions.dart';
void main() 
{
  // Now you can call the 'add' function from 'functions.dart'
  int result = add(3, 4);
  print(result);
}

/* By using the "functions.dart" import statement, Dart is able to incorporate the functions from the corresponding 
file into the current one, ensuring smooth integration of code. When executing your Dart program, remember to run the 
file containing the main function.*/

/* The Dart runtime will handle importing the necessary files. With the main function file, the functions from the other 
file will be automatically imported and readily accessible as if they were declared within the current file.*/

/* It is important to note that the import statement's paths are relative to the location of the Dart file, so it is imperative 
to ensure the file structure and paths are accurately specified. In cases where the files are located in different directories, 
it may be necessary to adjust the import statement accorndingly. */

