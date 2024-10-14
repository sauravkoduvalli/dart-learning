/* --- Private field --- */

/*
  - When you define a property for a class, you can access it from the outside of a class. The accessibility of the property is public.
  - To make the property private, you need to prefix its name with an underscore. Ex: type _privateVariable;
  - A variable of a class is generally called a field. However, if it can be accessed from outside of a class, it is called a property. 
  - In Dart, privacy is at the library level rather than the class level. Adding an underscore to a variable makes it library private not class private.

  Initializer List
  ----------------
  - Used to initialize fields of a class before the constructor body runs.
  - It's particularly useful for setting up final fields, handling non-nullable fields, or performing some calculations before the constructor executes.
  - Initializer lists are often used to initialize final fields, which must be set when the object is created and cannot be changed later.

  Usecase of initializer list
  ---------------------------
  1) Initializing Final Fields: 
    - When you have a final field in a class, it must be initialized when the object is created. You can use the initializer list to set its value.
  
  2) Non-nullable Fields:
    - For fields that cannot be null (without a default value), you can use the initializer list to ensure they are properly set.

  3) Calling Superclass Constructors:
    - When your class extends another class, you can use the initializer list to call the superclass's constructor.

  4) Assertions in Initializer List:
    - You can include assertions in the initializer list to check for certain conditions before the object is fully constructed.
*/

class Point {
  int _x = 0, _y = 0;

  Point({required int x, required int y}) {
    this._x = x;
    this._y = y;
  }
  void show() {
    print('Point(x=$_x,y=$_y)');
  }
}

class Square {
  final int value;
  final int squareRoot;

  Square(int value) : this.value = value, this.squareRoot = value*value {
    print('Square of $value is ${this.squareRoot}');
  } 
}

class Rectangle {
  final int width;
  final int height;
  final int area;

  Rectangle(int w, int h)
      : width = w,
        height = h,
        area = w * h, // Calculation in the initializer list
        assert(w > 0 && h > 0, 'Width and Height must be positive') {
    print('Rectangle created with width: $width, height: $height, area: $area');
  }
}

void main() {
  var p1 = Point(x: 100, y: 200);
  p1.show();

  // To prevent other functions from accessing the private fields of the Point class, you need to create a new library and place the class in it.
  p1._x = 101; // here the private field is accessible because, it is not library level.

  Square(5); // Square of 5 is 25

  Rectangle(4, 5); // Output: Rectangle created with width: 4, height: 5, area: 20
}
