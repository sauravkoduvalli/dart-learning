/*
  - records are a new feature in Dart 2.12.
  - Records are used to define a new data type.
  - A record is a collection of fields, where each field has a name and a type.
  - A record is similar to a class, but it is more lightweight and has a more concise syntax.
  ex: var record = ('first', a: 2, b: true, 'last');
  
 */

void main() {
  // Record syntax:

  // Record type annotation in a variable declaration:
  (String, int) record;
  // Initialize it with a record expression:
  record = ('A string', 123);
  print(record);

  // Record fields:
  var newRecord = ('first', a: 2, b: true, 'last');

  print(newRecord.$1); // Prints 'first'
  print(newRecord.a); // Prints 2
  print(newRecord.b); // Prints true
  print(newRecord.$2); // Prints 'last'

  // Record types:
  (num, Object) pair = (42, 'a');

  var first = pair.$1; // Static type `num`, runtime type `int`.
  print(first is int); // true
  var second = pair.$2; // Static type `Object`, runtime type `String`.
  print(second.runtimeType); // String

  // Record equality:
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);

  print(point == color); // Prints 'true'.

  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color1 = (r: 1, g: 2, b: 3);

  print(point1 == color1); // Prints 'false'. Lint: Equals on unrelated types.
}
