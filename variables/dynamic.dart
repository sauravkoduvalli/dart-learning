/*
  - The dynamic keyword is used to declare a variable without specifying its type.
  - The variable declared with the dynamic data type can store any type of value during the execution of the program.
  - The dynamic keyword is similar to the var keyword, but the difference between them is that the var keyword is replaced with the appropriate data type when you assign data to the variable.
  - The dynamic keyword is used when you don't know the type of the variable at compile time.
  - The dynamic keyword is used when the variable can store different types of values at different times. after running the program.
*/

void main() {
  dynamic name = 'Foo bar';
  dynamic age;
  print('Name is: $name');  // Foo bar
  print('Age is: $age'); // null
  name = 123;
  age = 27; 
  print('Name is: $name');
  name = true;
  print('Name is: $name');
}
