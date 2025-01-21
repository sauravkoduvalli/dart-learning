/* --- Extensions in Dart --- */

/*
  - Dart extensions allow you to add new methods to existing classes without modifying the original class.
  - This is particularly useful when you want to add functionality to a class that you can't modify directly, such as a third-party library.

  Key Points to Remember
  ----------------------
  - No Access to Private Members: Extensions cannot access private members of the extended class.
  - Static Members: Extensions can have static members, which can be accessed without an instance of the extended class.
  - Multiple Extensions: You can define multiple extensions on the same class.
  - Conflict Resolution: If two extensions define a method with the same signature, the extension that is applied later takes precedence.
*/

/// Let's say you're using a third-party library that has a [Person] class. You want to add a new method [fullName()] to this class.
class Person {
  String firstName;
  String lastName;

  Person({required this.firstName, required this.lastName});
}

extension PersonExtension on Person {
  String fullName() {
    return '$firstName $lastName';
  }
}

void main() {
  Person person1 = Person(firstName: 'Saurav', lastName: 'Koduvalli');
  var personFullName = person1.fullName();
  print(personFullName);
}