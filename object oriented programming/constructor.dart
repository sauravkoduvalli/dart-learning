/* --- Constructors in dart ---*/

/*
  - A constructor is a special method to create and initialize object of a class.
  - A constructor is automatically called when an object of the class is created.

  Types of Constructors
  ---------------------
  1) Default Constructor:
    - When you creating a class without explicitly providing a constructor, the class will have a default constructor.
    - It has the same name as the class name. 
    - It is a no-argument constructor with no body.

  2) Custom Constructor/Parameterized Constructor:
    - Used to create an object and initialize its properties and perform any methods at the same time.
    - A parameterized/Custom constructor allows you to pass parameters to the constructor to initialize the object with specific values.
    - You can provide any number of parameters to a parameterized constructor.
    - Dart also supports named parameters in constructors, which makes the code more readable by specifying the names of the parameters while calling the constructor.
    - Named parameters can also be marked as optional or required.

  3) Named Constructor:
    - Named constructors allow you to create multiple constructors with different names for a class.
    - This is useful when you want to create objects in different ways. 
    - To define a named constructor, you add an identifier to the class name with the following syntax: className.constructorName()

  4) Constant constructor:
    - Constant constructors are used to create constant objects.
    - Constant objects are immutable and can be created at compile time.
    - It is defined using the 'const' keyword.
    - All the fields in the class must be final for a constant constructor.
    
  5) Redirecting/Forwarding Constructor:
    - A redirecting constructor is used to call another constructor in the same class.
    - It reduces code duplication by redirecting to another constructor.

  7) Factory Constructor:
    - A factory constructor in Dart is a special type of constructor that allows you to control the creation of objects. 
    - Unlike a normal constructor, a factory constructor doesn’t always create a new instance of the class. 
    - It can return an existing instance, a cached instance, or an instance of a subclass.
    - 'factory' keyword is used to define a factory constructor.
    - Must return an instance of the class or a subclass.
    - No this keyword: Cannot directly access instance variables or methods.
    - Can return different object types based on conditions.
    - Does not allocate memory directly. It can:
      - Return an existing object.
      - Create a new object.
      - Return an object from a different class.
    - Ideal for implementing design patterns like 'singleton' or 'factory pattern'.

    Constructor initialization list:
    -------------------------------
    - a constructor initialization list allows you to initialize instance variables before the constructor body executes. 
    - It’s defined using a colon (:) after the constructor's declaration.

    Why Use Constructor Initialization List?
    - To initialize final or const instance variables.
    - To set up values that depend on constructor parameters.
    - To call the superclass constructor in inheritance.
    - To run code before the constructor body executes.
*/

class Default {
  int x = 0, y = 0;

  // This is a default constructor.
  Default() {
    print("default constructor called");
  }
}

class Custom {
  late int x, y;

  // Dart calls the following constructor as a long-form constructor.
  Custom(int x, int y) {
    this.x = x;
    this.y = y;
    this.show();
  }

  void show() {
    print('Value of x and y is $x, $y');
  }

  // Also, Dart has a short-form constructor where you don’t provide the body.
  // Instead, you list the properties that you want to initialize like this: Custom(this.x, this.y);
  // In the short-form constructor, Dart infers the types of parameters as integers.
  // The short-form constructor works like the long-form constructor but the code is more concise.
}

class Named {
  late int x, y;

  // this is a custom constructorw ith positional parameters.
  Named(this.x, this.y);

  // this a named constructor assigning value 0 to x and y properties.
  Named.origin() {
    this.x = 0;
    this.y = 0;
    print('value of x and y is $x, $y');
  }
}

class NamedParameter {
  int x, y;

  // Named parameters
  NamedParameter({required this.x, required this.y});

  void display() {
    print('x = $x, y = $y');
  }
}

class Redirecting {
  int x, y;

  // this is a custom constructor with positional parameters.
  Redirecting(this.x, this.y);

  // Redirecting constructor to change the value of x by calling the constructor with only x value.
  // Then it will call the main constructor to set the value of y to 0 and x to the value passed.
  Redirecting.changeXValue(int x) : this(x, 0);

  // Redirecting constructor to set the value of x and y to 0.
  Redirecting.origin() : this(0, 0);

  void display() {
    print('x = $x, y = $y');
  }
}

void main() {
  // creating an object 'obj1' from the DefaultClass class which will call its constructor.
  Default();
  print('-------------------');
  // creating an object 'obj2' from Custom which initilizes the Constructor by providing values to x and y properties.
  Custom(11, 22);
  print('-------------------');

  // this will set the values of x and y properties.
  Named(111, 222);
  print('-------------------');

  // this will call the named constructor 'origin()' and set the values of x and y to 0.
  Named.origin();
  print('-------------------');

  // named parameters for more readable code.
  NamedParameter(x: 10, y: 20);
  print('-------------------');

  // redirecting constructor to change the value of x.
  var redirectingObject = Redirecting.changeXValue(5);
  redirectingObject.display();
  print('-------------------');

  // redirecting constructor to set the value of x and y to 0.
  redirectingObject = Redirecting.origin();
  redirectingObject.display();
}

