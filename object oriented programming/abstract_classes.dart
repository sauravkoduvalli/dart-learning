/* Abstract Class */

// Concrete class - Classes from which can create new object out of it.

/*
  - An abstract class is a class that cannot be instantiated. 
  - It’s declared with an abstract keyword.
  - They can contain both abstract and concrete methods.
  - Derived classes must implement all abstract methods inherited from the abstract class.
  - Abstract classes can be used to define hierarchies of related classes.
  - Subclasses of an abstract class must provide an implementation for abstract methods and properties.
*/

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle({required this.radius});

  @override
  double area() => 3.14 * radius;
}

class Square extends Shape {
  double length;

  Square({required this.length});

  @override
  double area() => length * length;
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle({required this.height, required this.width});

  @override
  double area() => height * width;
}

void main() {
  var circleArea = Circle(radius: 5);
  print('Area of circle is ${circleArea.area()}');

  var square = Square(length: 15);
  print('Area of square is ${square.area()}');

  var rectangle = Rectangle(height: 15, width: 10);
  print('Area of square is ${rectangle.area()}');
}
