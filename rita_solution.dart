void main(){
// 1. What is function in dart.
// Function in Dart are powerful tools for performing specific tasks or sets of tasks.Dart is a programming language created by Google. It is utilized in developing Web, Mobile and Server applications. The type of function are as follows; Named, Anonymous Constructors, Getters and Setters,Top- level functions, function parameters, Function expressions.//
// Named function
void greet(String name){
  print("Good Morning Rita $name!");
}
// Anonymous fuction asigned to a variable
var add =(int a,int b){
return a + b;
};
// Class with named and unnamed constructors, getters and setters
class Rectangle{
  double_width,_height;
// Named constructor
Rectangle.named(this._width, this._height_);
// Unnamed constructor
Rectangle() :_width = 0,_height = 0;
//Getter
double get area => _width *_height;
//Setter
set dimensions(List<double>dimensions){
  if(dimensions,length == 2){
  _width = dimensions[0];
  _height =mdimensions[1];
  } else{
    print("Invalid number of dimensions.");
  }
}
} 
void main(){
  //Calling the named function
  greet("Nzeamalu");
  //Calling the anonymous function using the variable
  var result = add(70, 90);
  print("The sum is:$result");
  //Using the Rectangle class
  var rectangle 1= Rectangle.named(8,20);
  print("Area of rectangle1: ${rectangle1.area}");
  var rectangle2 =Rectangle();
  rectangle2.dimensions =[5,15];
  print("Area of rectangle2: ${rectangle2.area}");
}
//2. How do you declare a function in dart?
// In Dart, you can declare a function using the following examples;
void printMessage(String message)
{
  print(message);
}
void main(){
  //Calling the named function
  printMessage("Hi Gilbert!");
}
//3.) What is the purpose of the main() fucntion in dart.
// When using Dart,the main() function plays a crucial role as the starting point of the program. As you launch the program the application, the Dart runtime immediately begins executing the code from this particular function. Essentially, it is the fundermental function.//
// To give a clearer illustration,  lets take a look at the simple framework of a dart program featuring the main() funtion:
void main(){
  //code starts the program
} 
//4.) Explain the difference between a named function and an anonymous function.
// In the world of Dart, the distinction between a named function and an anonymous function centers around how they are defined and utilized: Named function://
// To create a named fuction, one must use the syntax 
returnType functionName(parameters)
{/*function body*/} 
//These types of functions are assigned a specific name and designed to be reused in various parts of the code.//
//They can easily be invoked by calling theoir designated name,
//An anonymous function, also known as a function literal or closure, is declared using the syntax(parameters)
{/*funtion boidy*/}
//*Unlike regular functions, it does not have a designated name and can be assigned to variables.This flexibility makes it a popular choice for short-lived tasks, as well as for being used as arguments in other functions.//
//Heres a recap, named functions have a designated name and can be invoked by the name,encouraging reuse. In contrast, Anonymous functions lack a specific name and typically utilized in situations where a brief function is required*/
//5.) What is a return type in dart functions.
//* When using Dart functions, the return type determines the kind of value that the function will generate. It also serves to indicate that a function does not yield a value if it has a void return type. The declaration of the return type proceeds the function//
//Take a look at the following fotmat for bdeclaring a function with a return type:
returnTypefunctionName(parameters)
{
  //Function body
  //Code to perform the task
}
//6.) How can you pass parameters to a dart function?
//In Dart,passing parameters to a function is as simple as enclosing them in parentheses after the function name.Parameters enable you to input values that the function can utilize in executing a designated action. The syntax generally looks like this:
returnTypefunctionName(parameters1Typeparameter1,parameters2Typeparameters2,......)
{
  //Function body
  //Code to perform the task using parameters
}
Example:
void greet(String name,int age)
{
  print("Good morning,$name!You are $age years old.");
}
void main(){
  greet("Ebuka,27");
  greet("Uche,25");
}
//7.) Describe the difference between positional and named parameters.
//In Dart,function parameters can be classified into two main types:positional parameters and named parameters. The distinction lies in how ypu pass arguments to a function.//
//Positional Parameters:
//*Declaration: Positional parameters are defined by their position in the function parameters list. They are the most most common type of parameters.*//
// Syntax:
ReturnTypefuctionName(Type param1, Type param2,....)
{/*function body*/}
//Usage: When calling the function,you pass arguments in the same order as the parameter are declared.
void printDetails(String name,int age,double height){
  print("Name:$name,Age:$age,Height:$height");
}
void main(){
  //Calling the function with positional arguments
  printDetails("Ebuka",27,6.0);
}
//8.) What is the significnace of the(=>)syntax in Dart functions?
//The arrow (=>)syntax in Dart is a convenient way to write compact functions, making it a popular choice for one-line functions or expressions. It is especially helpful when the function body contains only one expression.
//Here is the general syntax for arrow funtions:
returnTypefunctonName(parameters) => expression;
//9.) How do you define default parametes values in Dart functions?
//*In Dart,you have the flexibility to set default values for function parametersby assigning them adefault value in the function declaration. This convenient feature allows you to set a predefined value that will be used in case the caller doesn't provide a value for that specific parameter*/
//Here is an example to simply use the = syntax 
void greet({String name ="Guest",int age = 0})
{
  print("Hello,$name!You are $age years old.");
}
void main()
  //Calling the function without providing values for parameters
   greet();
  //Output:Hello,Guest! You are 25 years old.
  //Calling the function with specific values for parameters
 greet(name:"Ebuka",age:27);
}
//10.) Explain the concept of optional parameters in Dart functions?
//In Dart, the usage of optional parameters allows for the creation of versatile functions that can be called with or wothout certain parameters. Optional parameters fall into two cagegories: positional optional parameters and named optional parameters.*//
// Example of positional option psarameter:
void printDetails(String name,[int age = 30, double height = 157.0])
{
  print("Name: $name, Age: $age, Height: $height");
}
void main()
{
  //Calling the function with or without optional parameters
  printDetails("Gilbert");
  printDetails("Rita",25);
  printDetails("Ebuka",27, 170.0);
}
//Example of positional option parameter
void printDetails({String? name,int age= 27, double height = 129.0}){
print("Name: $name, Age: $age, Height: $height");
}
void main()
{
  //Calling the function with and without optionl parameters
  printDetails(name:"Gilbert");
  printDetails(name:"Rita", age: 25);
  printDetails(name:"Ebuka", height: 6.0); 
}
//11.) What is the purpose of the void keyword in Dart functions?
//*when working with dart, the void keyword is crucial,It signifies that a function will not yield a value upon completion. In simple terms, a function with a void return type will successfully complete its designated task, but will not provide a usable result.//
//Syntax Exmaple:
void functionName(parameters){
  //Function body
  //Code to perform the task
}
//12.) How can you define a function inside another function in Dart? What is called?
//* In Dart,nested functions,also called "functions inside functions, allow ypu to define a function within another one. This is all possible thanks to darts support for traeting functions as first-class citizens. This allows you to declare functions with*//
//Here's an example of defining a nested function in Dart:
void outerFunction()
{
  print("Outer function");
  void innerFunction()
}
print("inner fucntion");
{
  innerFunction();//Call the nested function
} 
void main()
{
  outerFunction();
}
//13.) What is the higher order function in Dart?
//*Dart features a powerful concept known as higher-order functions. These types of functions go beyond the traditional idea of a function, as they can take in one or more functions as inputs and even return a function as a result. This makes darts function.//
//There are two main types of higher-order function:
//Function that take functions as parameter:
//These functions accept one or more functions as arguments, allowing you to customize their behaviour by passing different functions.
//Example:
int operate(int a,intb,int function(int, int)operation){
  return operation(a,b);
}
void main(){
  int result = operate(5,3(a,b)=> a+b);
  print(result);
}
//Functions that return functions:
//These functions create and return a new functions, making a way to create functions in a robust way.
//Example:
Function multiplyBy(int factor) 
{
  return(int number) => number * factor;
}
void main()
{
  final mmultiplyBy3 = multiplyBy(3);
  print(multiplyBy3(5));//Output: 15)
}
//14.) Explain the difference between functions and methods in Dart.
// *Difference between methods and fucntions is clear: method operate within a class framework and have access to its context,while functions stand alone and are not bound by any class.//
//Example of methods (instance)
class Calculator {
  int add(int a,int b){
    return a + b;
  }
}
var calc = Calculator();
print(calc.add(3,4)); //Calling the instance method
//Example of function
int add(int a,int b){
  return a + b;
}
//15.) How do you use the return keyword in Dart functions?
//When programming in Dart, the return keyword serves as a powerful tool for indicating the desired output of a function. Not only does it mark the end of the function's operation, but it also allows the provision of a return value to be sent back to the caller.this makes it a crucial element for sacheiving desired results and enhancing the fuctionality of our code.//
//Here is an example that uses return keyword 
int add(int a,int b){
  int sum = a = b;
  return sum;
}
void main()
{
  int result = add(3,4);
  print(result); //Output:7
}
//16.) What is a function signature, and why is it important?
// A function signature serves as a streamlined overview of a function,encompassing vital details about its composition. It provides vital information such as the functions given title, the type of value it returns, and the type of data it requires as input.This vital component plays a crucial role in establishing the functions interface and providing guidance on its cotrrect application.//
//The general syntax of a function signature in dart is as follows:
returnTypefunctionName(parameterType1parameter,parameterType2parameter2,.....){
  //Function body
  //Code to perform the task
}
//to sum up, a function signature plays a crucial role in outlining the expectations for both the function and its callers.By providing necessary details about the input, output and behaviour of the function, it helps improve code documentation,readability and maintain type safety during the develpoment preocess.//
//17.) How can you make a function in Dart asynchronous?
//*In dart, adding  the async keyword can transform into a asynchronous powerhouse.This means the function can excute tasks without delaying the entire program,such as making network requests, reading files or waiting for timers.By declaring.//
//Here's working example of asynchronous function:
Future<void>fetchData()async
{print("Fetching data....");}
await Future.delayed(Duration(seconds:2));//Simulating an asynchronous delay print("Data fetched");}
void main()
{fetchData();print("Main fuction continues executing....");}
//18.) Describe the use of the async,and future keywords in asynchronous functions.
/* When writing in Dart, understanding how hte keywords async, await and future function is crucial for mastering asynchronous programming.These powerful tools work in harmony to allow for the execution of tasks without stalling the main thread of the program*/
//Heres an overview of their use:
//a.) async keyword
/*The async keyword is used in function declarations to indicate that a function is asynchronous.Functions marked as async can perform asynchronous operations and await keyword inside the function body*/
//Syntax:
Future<void>myAsyncFunction()async
{
  //Asynchronous operations using 'await'
} 
//b.) Await keyword:
/*The await keyword is used inside an async function to pause the execution of the function until the awaited asynchronous operation is complete./
//It can only be used inside an async fucntion.
Syntax:
Future<void>fetchData()async
{
  var result = await someAsyncOperation();
  //Code after 'await'resumes when 'someAsyncOperation' is complete
}
//c.) Future Class:
/*The Future class represents a value or error that will be available at some time in the future.Asynchronous functions return a Future to indicate that they perform asynchronous operations. The Future class allows you to handle the result of asynchronous operations,including handling errors.*/
//Syntax:
Future<int>calculateSquare(int number)async{
  return number*number;
}
/*The future class is also used with the async and await keyword to handle asynchronous tasks and compose them in a sequential manner.
In summary,the async keyword is used to declare a function as asynchronous,the await keyword is used to pause the execution of an asynchronous function until a task is complete,and the Future class is used to represent the result of asynchronous operation and handle their completion. Together,these keywords and classes form the foundation of darts asynchronous programming mode*/
//19.) How do you call a function defined in another Dart file?
// To call a function defined in another dart file, you need to import that dart file into the file whwre you want to use the function. Dart uses the import statement for this purpose.//
//Heres a step-by-step guide:
//1. Create the dart file with the function you want to call: lets say you have a dart file named functions.dart with the following content:
//functions. dart
int add(inta, int b){
  return a + b;
}
//2. Import the dart file in the file where you want to use the function:
//3. In the dart file where you want to call the add function,use the import statement to include the fucntions.dart file.
//For example:
//main.dart
import'function.dart';
void main()
{
  //Now you can call the 'add' function from'function.dart'
  int result = add(3,4);
  print(result);
}
/*By using the "functions.dart" import statement, Dart is able to incorporate the functions from the corresponding file into the current one, ensuring smooth integration of code. When executing your dart program, remember to run the file containing the main function*/
/*The Dart runtime will handle importing the necessary files. With the main function, the functions from the other file will be automatically imported and readily accessible as if they were declared with the current file*/
/*It is important to note that the import statement's paths are relative to the location of the dart file, so it is imperative to ensure the file structure and paths are accurately specified. In cases where the files are located in different directories,it may be neccesary to adjust the import statement accordingly*/