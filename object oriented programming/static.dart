/* --- Static in dart --- */

/*
  - The 'static' keyword is used to define class-level variables and methods that are shared by all instances of the class.
  - A static member (variable or method) belongs to the class itself, rather than to any particular instance of the class.
  - Don't need to create an object of the class to access static members. 
  - Changing the value in one instance affects all other instances.
  - Static methods cannot access instance variables or methods directly, since they do not belong to a specific instance.

  Key Rules
  ---------
  - Static Variables: 
    - Use the class name to access and modify static variables (ClassName.staticVariable).
  - Static Methods: 
    - Use the class name to call static methods (ClassName.staticMethod()).
  - Instance Members in Static Methods: 
    - Static methods cannot directly access instance members. 
    - You must create an object to use instance members inside a static method.

  When to Use Static in Dart
  --------------------------
  - Use static variables when you need to keep track of values across all instances of a class.
  - Use static methods for utility or helper functions that do not depend on instance data.

  Static vs. Instance Members
  --------------------------------------
  - Static methods cannot access non-static (instance) members because they do not operate on any particular instance of the class. 
  - However, instance methods can access both static and non-static members.

*/

// Example of Static vs. Instance Members
class Example{
  int instanceVariable = 1; // instance variable
  static int staticVariable = 2; // static variable

  // instance method
  void instanceMethos() {
    print('Instance method can access both instance and static variables.');
    print('Instace variable: $instanceVariable');
    print('Static variable: $staticVariable');
  }

  // Static method
  static void staticMethod() {
    print("static method can only access static variables, not instance variables");
    // print('Instance variable: $instanceVariable'); // this will throw error.
    print('static method: $staticVariable');
  }
}

class Counter {
  static int counter = 0;

  static int increment() {
    return counter++;
  }

  void displayCounter() {
    print('Counter: $counter');
  }
}


void main() {
  // accessing the static members directly using classname
  Counter.increment();
  Counter.increment();
  print(Counter.counter); // Output: 2

  // crating an instance of the class
  Counter counter = Counter();
  counter.displayCounter(); // Output: 2

  // changing the static variable through instance of the class
  Counter.counter = 5;
  counter.displayCounter();
}