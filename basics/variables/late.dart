/* Late Keyword */

// 'late' keyword is used to declare a non-nullable varibale which will be initialized later point in time, rather than st the point of declaration.

/*
  USE CASES

  1) Deferred initialization:-
    - 'late' keyword tells the dart compiler, the variable will be initialized later, but before it is accessed. 
    - Useful when want to delay the eecution of a variable until it is actaully needed.

  2) Non-nullable variable:-
    - With null safty, non-nullable varibales must be initailized before it is used.
    - late keyword allows to declare non-nullable variables without immediately initializing them.

  3) Avioiding expensive computation:-
    - if a variable's initialization involves expensive computations, use late keyword to defer the computation until the value is actually needed.

  4) Mutability and reassignment:-
    - A varibale can be reassigned if it is a var or a mutable type. However once a 'late final' varible is assigned, it cannot be reasigned.
  
  5) Error handling:-
    - If a vaiable is accessed before it is initialized, the program will throw a runtime error (LateInitializationError), indicating that the varibale is not assigned yet
    
 */

class MyClass {
  // late variable declared
  late String description;

  // method for initializing a value
  void initialiseDescription() {
    description = "description value";
  }

  // method for printing that value
  void printDescription() {
    print(description);
  }
}

class ComputationClass {
  // late final String name = getName();
  late var name = getName();

  String getName() {
    print('Fetching name...');
    return 'Saurav Koduvalli';
  }
}

void main() {
  // creating a instance/object of 'MyClass'
  final myObject = MyClass();

  // Will assign a value to 'description' variable
  myObject
      .initialiseDescription(); // try commenting this method and run the code, will throw "LateInitializationError" error.

  // Will print the assinged value.
  myObject.printDescription();

  // creating instance for ComputationClass
  final computationObject = ComputationClass();

  // At this point name is not yet initialized
  print("before accessing name");

  // Now the name is accessed, triggering the initialization
  print(computationObject.name);
  computationObject.name = "Saurav K"; // re-assigned since this variable is declared as var in its calss. Use 'late final VaiableType' instead of 'late var', will not allow re-assigning.
  print(computationObject.name);
}

/// Success Case: The 'late variable is assigned with initialiseDescription() method, so that the variable can be used.'
/// Error Case: If we try to call the printDescription() method before 'description' variable is assinged then the program will throw 'LateInitializationError'.