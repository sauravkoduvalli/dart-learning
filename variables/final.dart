
/*
  - To define constants whose values are known at runtime, you use the 'final' keyword.
  - Unlike the const keyword, you don’t need to initialize the finalVariable in the declaration immediately.
  - Once you assign a value to a final variable, you cannot reassign a value to it.
  - If you declare a final variable and initialize its value immediately, you can use type inference to make the declaration shorter. 
    For example: final name = 'Foo bar'; // The type of name is String is inferred from the value 'Foo bar'.
*/

void main() {
  final String name= 'Foo bar';
  print('Name is: $name');
  // name = 'baz'; // Error: A final variable can only be set once.
  
}
