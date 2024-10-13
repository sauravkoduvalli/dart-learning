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
    - To create an object and initialize its properties and perform any methods at the same time..
    - A parameterized/Custom constructor allows you to pass parameters to the constructor to initialize the object with specific values.
    - You can provide any number of parameters to a parameterized constructor.

  3) Named Constructor:
    - Named constructors allow you to create multiple constructors with different names for a class.
    - This is useful when you want to create objects in different ways. 
    - To define a named constructor, you add an identifier to the class name with the following syntax: className.constructorName()

  4) Named Parameters Constructors:
    - Dart also supports named parameters in constructors, which makes the code more readable by specifying the names of the parameters while calling the constructor.
    - Named parameters can also be marked as optional or required.

  5) Constant constructor:
    - Used to create compile-time constants.
    - It is defined using the 'const' keyword.
    - All the fields in the class must be final for a constant constructor.
    
  6) Redirecting/Forwarding Constructor:
    - A redirecting constructor is used to call another constructor in the same class.
    - It reduces code duplication by redirecting to another constructor.

  7) Factory Constructor:
    -  
*/


class DefaultClass {
  int x = 0, y = 0;

  // This is a default constructor.
  DefaultClass() {
    print("default constructor called");
  }
}

class CustomClass {
  late int x, y;

  void show() {
    print('Value of x and y is $x, $y');
  }

  // Dart calls the following constructor as a long-form constructor.
  CustomClass(int x, int y) {
    this.x = x;
    this.y = y;
    this.show();
  }

  // Also, Dart has a short-form constructor where you don’t provide the body.
  // Instead, you list the properties that you want to initialize like this: CustomClass(int x, int y);
  // In the short-form constructor, Dart infers the types of parameters as integers.
  // The short-form constructor works like the long-form constructor but the code is more concise.
}

class NamedClass {
  late int x, y;

  NamedClass(this.x, this.y); // parameterized or custom or short-form constructor

  // this a named constructor assigning value 0 to x and y properties.
  NamedClass.origin() {
    this.x = 0;
    this.y = 0;
  }
}

class NamedParameterClass {
  int x, y;

  NamedParameterClass({required this.x, required this.y}); // Named parameters

  void display() {
    print('x = $x, y = $y');
  }
}

class RedirectingClass {
  int x, y;

  RedirectingClass(this.x, this.y); // custom or parameterized constructor.

  // the named constructor 'changeXValue' has a parameter 'x' which will change the value of x peroperty and set the y value to 0.
  RedirectingClass.changeXValue(int x) : this(x, 0); 

  void display() {
    print('x = $x, y = $y');
  }
}

void main() {
  // creating an object 'obj1' from the DefaultClass class which will call its constructor.
  DefaultClass();

  // creating an object 'obj2' from CustomClass which initilizes the Constructor by providing values to x and y properties.
  CustomClass(11, 22);

  NamedClass(111, 222); // this will set the values of x and y properties.
  NamedClass
      .origin(); // this will call the named constructor 'origin()' and set the values of x and y to 0.

  NamedParameterClass(x: 10, y: 20); // named parameters for more readable code.

  var redirectingObject = RedirectingClass.changeXValue(5);
  redirectingObject.display();
}
