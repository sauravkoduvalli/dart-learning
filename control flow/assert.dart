/* --- asserts --- */

/*
  - Assert provides a method to check errors in dart code.
  - it takes conditions as arguments. 
  - If the condition is TRUE, nothing happens. if the condtion is FALSE, it will raise an error.
  - Syntax: assert(condition); or assert(condition, "Your custom message");
  - To run a file in assert mode use this command: dart --enable-asserts file_name.dart
*/

void main() {
  var age = 27;
  assert(age == 18, "Age must be 18");
}
