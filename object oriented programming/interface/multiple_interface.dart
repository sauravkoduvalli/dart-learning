/* --- Multiple Interfaces --- */

/*
  - Dart support only single inheritance. It means a class can inherit only a single class.
  - To achieve, Multiple inheritacne, dart support implementing multiple interfaces. Therefor a dart class can extend a single class and implements muultiple interfaces.
*/

import 'dart:io';

abstract class Read {
  String? read();
}

abstract class Write {
  void write(String? message);
}

class Console implements Read, Write {
  @override
  String? read() {
    print("Enter a string: ");
    return stdin.readLineSync();
  }

  @override
  void write(String? message) {
    print("Entered string:' $message'");
  }
}

void main() {
  Console console = Console();
  String? input = console.read();
  input != ''
      ? console.write(input)
      : console.write("You have not entered anything");
}
