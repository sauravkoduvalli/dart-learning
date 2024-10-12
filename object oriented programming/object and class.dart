/* --- Object and Class */

/*
  - Dart is an object oriented programming language, and in dart everything is an object.
  - An object consist of state and behaviour.
    - A state describes the values that an object has at a specified time.
    - Behaviours are the actions that an object can do to manipulate its state.
  
  - A class is a bluprint to create objects.
  - Variables are used to model the states of the object. When varaibles are defined inside a class, it is called Properties of the class.
  - Functions are used to model the behaviours of the object. When a function is defined inside a class, ot is called Methods of that class.

  - 'class' keyword is used to define a class followed by a class name and curly braces. 
  - Class names follow pascal naming convention in dart. Ex: ClassName.

  - Cascade Operator(..), which will allows to chain multiple assignments on the same object without repeating the object name.

  - The 'is' operator is used to check the type of object is same or not. Returns TRUE, if objects are same, otherwise returns FALSE.

*/

// defining a class Point with x and y properties and default value as 0.
class Point {
  int x = 0;
  int y = 0;

  // creating a method 'reAssign', with 2 paramters, which will re-assign the value of x and y property.
  void reAssign(int x1, int y1) {
    x = x1;
    y = y1;
  }
  // creating a method 'show'
  void show() {
    print("Value of x is $x");
    print("Value of y is $y");
  }
}

void main() {
  // creating an object p1 from the Point class.
  var p1 = Point();


  // assigning value to x property of p1 object.
  p1.x = 10;
  // assigning value to y property of p1 object.
  p1.y = 20;


  // The p1 object is repeated multiple times to assign values to it's properties.
  // An alternative way is using Cascade Operator(..), which will allows to chain multiple assignments on the same object without repeating the object name.
  // creating another object p2 from Point obejct and using Casecade operator to assign values.
  var p2 = Point()
    ..x = 100
    ..y = 200;

    // After assiging new values to x and y properties of p2. 
    // Now call the reAssign method and assign new values to x and y.
    p2.reAssign(111, 222); // here, x value becomes 111 and y value becomes 222.
    p2.show(); // this will print the new values of x and y respectively.;


  // With is operator, we can check p1 is an instance of a class.
  print(p1 is Point); // true

}
