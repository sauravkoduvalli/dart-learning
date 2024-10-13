/* --- this keyword --- */

/*
  - The 'this' keyword is used to reference the current object inside a class.
  - this keyword means current instance of the class.
*/

class Point {
  int x = 0, y = 0;

  // this method have the parameter name as Point class properties x and y.
  // So, we can use the this keyword to represent the properties.
  Point reassign(int x, int y) {
    this.x = x;
    this.y = y;
    return this;
  }

  Point show() {
    print("Value of x is $x, and y is $y");
    return this;
  }
  
  Point reset() {
    this.x = 0;
    this.y = 0;
    return this;
  }
}


void main() {
  // creates an object/instance of the class Point and successively calls reassign(), show() and reset() methods.
  var point1 = Point();

  point1.reassign(10, 20);
  point1.show();
  point1.reset();

  // we can use the Method Chaining to represent the above statements less verbose.
  // Method chanining is possible when the methods calling as chain returns the same object type.
  point1.reassign(11, 22).show().reset();
}
