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

  1) final: 
    - A final variable can be assigned only once.
    - A final variable can be assigned a value when it is declared or at a later time.
    - The type of the final variable can be explicitly defined or inferred by the Dart compiler.
    
  2) const: 
    -  A const variable is a compile-time constant.
    -  A const variable is implicitly final.
    -  A const variable must be initialized with a constant value.

  3) var: 
    - The var keyword is used to declare a variable without specifying its type.
    - The type of the variable is inferred by the Dart compiler at runtime.
    - The var keyword is used when you don't know the type of the variable at compile time.
    - The var keyword is used when the variable can store different types of values at different times after running the program.

  4) late: 
    - The late keyword is used to declare a variable that will be initialized later, but before it is accessed.
    - The late keyword is used to tell the Dart compiler that the variable will be initialized later, but before it is accessed.
    - The late keyword is used when you want to delay the execution of a variable until it is actually needed.
    - The late keyword is used to declare non-nullable variables without immediately initializing them.
    - The late keyword is used to avoid expensive computations until the value is actually needed.
    - The late keyword is used to avoid reassigning a variable once it is assigned.
    - The late keyword is used to handle errors when a variable is accessed before it is initialized.

  6) dynamic: 
    - The dynamic keyword is used to declare a variable without specifying its type.
    - The variable declared with the dynamic data type can store any type of value during the execution of the program.
    - The dynamic keyword is similar to the var keyword, but the difference between them is that the var keyword is replaced with the appropriate data type when you assign data to the variable.
    - The dynamic keyword is used when you don't know the type of the variable at compile time.
    - The dynamic keyword is used when the variable can store different types of values at different times after running the program.

  7) Explicity typed varibales:
    - The type of the variable is explicitly defined by the programmer.
    - Syntax: type variableName = value;
    - Ex: String name = 'Foo bar';

*/


void main() {
 //ēxamples for final, var, const, dynamic and late also static variables
  final String name= 'Foo bar';
  print('Name is: $name');
  // name = 'baz'; // Error: A final variable can only be set once.
  
  var age = 27;
  print('Age is: $age');
  age = 30;
  print('Age is: $age');

  const pi = 3.14;
  print('Value of pi is: $pi');
  // pi = 3.14159; // Error: Constant variables can't be assigned a value.

  dynamic isTrue = true;
  print('isTrue is: $isTrue');
  isTrue = false;
  print('isTrue is: $isTrue');

  late String city;
  // try catch block to handle the error
  try {
    // print('City is: $city'); // Error: LateInitializationError: Field 'city' has not been initialized.
  } catch (e) {
    print('Error: $e');
  }
  city = 'New York';
  print('City is: $city');

  // Explicitly typed variables anme and birthYear
  // String name = 'Foo bar';
  print('Name is: $name');
  // name = 123; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  int birthYear = 1997;
  print('Age is: $birthYear');
  // birthYear = '2000'; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
}



