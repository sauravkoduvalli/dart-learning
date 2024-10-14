/* --- Getter and Setters ---*/

/*
  - Getters and Setters are special methods that allow controlled access to the properties of an object.
  - They enables you to encapsulate and manage how the data or fields in a class is accessed and modified.
  - Using getters and setters, you ca add logic, when getting or setting a value, such as validation or data transformation.

  1) Getter: Used to access a property/field.
  2) Setter: Used to modify a property/field.

  Best Practices
  --------------
  1) Use Getters and Setters for Encapsulation: 
    - They allow you to control access to the data within your objects, applying validation or transformation if necessary.
  2) Use Read-Only Properties When Possible: 
    - If a property should not be modified after initialization, only define a getter.
  3) Avoid Setters for Immutable Classes: 
    - If a class is designed to be immutable, don't define setters, so its state cannot be changed after it's created.

  Benefits of Using Getters and Setters
  -------------------------------------
  1) Data Validation: 
    - You can add validation logic inside setters to ensure the property values are correct.
  2) Consistency:
    - If you need to update the logic for accessing or modifying a property, you only need to do it in one place.
  3) Encapsulation:
    - They help in hiding the internal representation of the object and expose a controlled interface.

*/

import 'rectangle.dart';

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.height = 5; // uses the setter to set the height
  rectangle.width = 8; // uses the setter to set the width
  print('Rectangle height: ${rectangle.height}'); // uses the getter to get the height.
  print('Rectangle width: ${rectangle.width}'); // uses the getter to get the width.
  print('Are of rectangle: ${rectangle.area}'); // Uses the getter to get the area (read-only)

}
