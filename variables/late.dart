// late keyword is used to declare a variable that will be initialized later, but before it is accessed.
// The late keyword is used to tell the Dart compiler that the variable will be initialized later, but before it is accessed.

/*
  uses of late keyword:-

  1) Deferred initialization:-
    - 'late' keyword tells the dart compiler, the variable will be initialized later, but before it is accessed. 
    - Useful when want to delay the eecution of a variable until it is actaully needed.

  2)  Non-nullable variable:-
    - With null safty, non-nullable varibales must be initailized before it is used.
    - late keyword allows to declare non-nullable variables without immediately initializing them.

  3) Avioiding expensive computation:- 
    - if a variable's initialization involves expensive computations, use late keyword to defer the computation until the value is actually needed.

  4) Mutability and reassignment:-
    - A varibale can be reassigned if it is a var or a mutable type. However once a 'late final' varible is assigned, it cannot be reasigned.

  5) Error handling:-
    - If a vaiable is accessed before it is initialized, the program will throw a runtime error (LateInitializationError), indicating that the varibale is not assigned yet
 */

void main() {
  late String name;
  // try catch block to handle the error
  try {
    // print('Name is: $name'); // Error: LateInitializationError: Field 'name' has not been initialized.
  } catch (e) {
    print('Error: $e');
  }
  name = 'Foo bar';
  print('Name is: $name');
}