/* --- Object Identity ---*/

/*
 
  - In Dart, all classes implicitly inherit from the Object class directly or indirectly. Therefore, all classes can access the == operator from the Object class.
  - The == operator returns true if two objects are equal. By default, the == operator compares two objects by their identities.
  -  To check if two variables reference the same object, you use the identical() function.
*/

/// define a Point class with two properties x and y.
class Coordinates {
  double x;
  double y;

  Coordinates({required this.x, required this.y});
}

void main() {
  // create two instances of the Point class c1 and c2 with the same x and y values.
  var c1 = Coordinates(x: 1.0, y: 2.0);
  var c2 = Coordinates(x: 1.1, y: 2.2);
  var c3 = c2;

  // use the == operator to compare c1 with c2.
  // Even though c1 and c2 have the same x and y coordinates, they are not equal.
  // The reason is that c1 and c2 are different objects.
  var result1 = c1 == c2;

  // The above checking can be acheived by using identical() function.
  var result2 = identical(c1, c2);

  // the following returns true because c2 and c3 reference the same object:
  var result3 = identical(c2, c3);

  print(result1); // false
  print(result2); // false
  print(result3); // true
}
