/* --- Variables --- */

/* 
  - A variable is an identifier that stores a value of a specific type. By definition, a variable is associated with a type and has a name.
  - Syntax for declaring a varibale - type variableName;
  - the type specifies the values that the variable can store. Since Dart is a statically typed language, you need to explicitly specify the variable’s type.
  - TYPE INFERENCE: A feature of Dart Compiler infer the type of the varaible when the variable is initialised without specifying the type of the variable.
*/ 

// Syntax to declare a variable is 'type variableName'
String? name; // '?' is used to make the varibale nullable;

// Syntax To declare multiple variables of the same type is 'type variableNname1, variableName2, variableName3;'
String? firstName, lastName;

/*  

Types of valriables

  1) Final variables: 
    - To define constants whose values are known at runtime use 'final' keyword.
    - Unlike the const keyword, you don’t need to initialize the finalVariable in the declaration immediately.
    
  2) Const: 
    - A constant variable is a compile-time constant and its value must be known before the program runs.
    - const don’t allow re-assigning the variable to a new value and also don’t allow any type of mutation.

  3) Var: 
    - var allows both mutations you can assign a new value to it and also change it’s internal value.

  4) Late: 
    - 'late' keyword is used to declare a non-nullable varibale that that will be initialized at a later point of time, rather than at the point of declaration.
  
  5) Static variables:
    - The static keyword is used for a class-level variable and method.
    - The static keyword allows data members to persist Values between different instances of a class.
    - There is no need to create a class object to access a static variable or call a static method: simply put the class name before the static variable or method name to use them.

  6) Dynamic variable: 
    - This is a special variable initialised with keyword 'dynamic'.
    - The variable declared with this data type can store implicitly any value during running the program.
    - It is quite similar to var datatype in Dart, but the difference between them is, the moment you assign the data to variable with var keyword it is replaced with the appropriate data type.

*/


void main() {
  // declared a variable 'httpStatusCode'
  int httpStatusCode; 
  // assigning a value to 'httpStatusCode'
  httpStatusCode = 200;

  print('http Status code: $httpStatusCode');

  // assinging a variable to another
  int response = httpStatusCode;

  print('repsonse:  $response');
  // re-assigning variable 'httpStatusCode' with a new value.
  // This will not affect the 'response' variable's value which is assigned before 'httpStatusCode' reassigned with new value.
  httpStatusCode = 201;

  print('http Status code: $httpStatusCode, response: $response');

  // Example for type inferece in dart
  var ideName = 'VS code';

  // dart compiler understand that this variable is initialised with a string value.
  print(ideName.runtimeType); // 'runtimeType' will return the object type of variable at runtime.
}

