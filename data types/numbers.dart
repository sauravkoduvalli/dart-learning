/*
  Dart int and double data types:
  - Dart has two numeric types: int and double.
  - The int type represents the integer values, whereas the double type represents the 64-bit (double-precision) floating-point numbers.
  
  dart num data type:
  - The num type is a superclass of int and double types.
  - The num type can be used to store both integer and floating-point numbers.
  - The num type is useful when you want to store integer and floating-point numbers in the same variable.

  dart bigint:
  - Dart BigInt class is used to represent arbitrary-precision integers.
  - The BigInt class is useful when you want to store large integer values that cannot be stored in the int type.
  ex: BigInt bigIntValue = BigInt.parse('123456789012345678901234567890');

  what is a raw string in dart?
    - A raw string is a string that is prefixed with the letter r.
    - In a raw string, escape sequences are not recognized. 
    For example, \n is not considered a new line, \t is not considered a tab, and so on.
  
*/

void main() {
  final int date = 27;
  final double doubleValue = 270.998;

  /// converting an string into integer, use `int.parse(expresison)`.
  int quantity = 5;
  String amount = "100";
  int total = quantity * int.parse(amount);
  print('Total is: $total'); // 500

  /// converting int varibale to double
  var inToDouble = quantity.toDouble();
  print(inToDouble.runtimeType); // double

  /// converting  string varibale to double
  var stringToDouble = double.parse(amount);
  print(stringToDouble.runtimeType); // double

  /// create raw string in dart. Special characters won’t work here. You must write r after equal sign.
  String withoutRawString = "The value of price is \t $date"; // regular String
  print(withoutRawString);
  String withRawString = r"The value of price is \t $date"; // raw String
  print(withRawString);

  /// basic properties

  // check given value is even, if Yes return TRUE, else FALSE.
  print('isEven: ${11.isEven}');
  // check given value is even, if Yes return TRUE, else FALSE.
  print('isOdd: ${13.isOdd}');
  // If the given number is finite, then it returns TRUE.
  print('isFinite: ${10.0.isFinite}');
  // If the given number is Infinite, then it returns TRUE.
  print('isInfinite: ${111.isInfinite}');
  // If the number is negative then it returns TRUE.
  print('isNegative: ${(-1).isNegative}');
  // It returns the sign of the number.
  // If the number is positive, then it returns 1.
  // If the number is negative, then it returns -1.
  // If the number is zero, then it returns 0.
  print('sign: ${date.sign}');

  /// basic methods in integer and double
  // It gives the integer equivalent representation of the number.
  print('toInt: ${doubleValue.toInt()}');
  //  It gives the absolute value of the given number.
  print('abs: ${doubleValue.abs()}');
  //  It gives the ceil value of the given number.
  print('ceil: ${doubleValue.ceil()}');
  // It gives the floor value of the given number.
  print('floor: ${doubleValue.floor()}');
  // Returns the integer after discarding fraction digits.
  print('truncate: ${doubleValue.truncate()}');
  // It returns the round of the number.
  print('round: ${doubleValue.round()}');
  // It gives the truncated remainder after dividing the two numbers.
  print('remainder: ${date.remainder(2)}');
  // It gives the double equivalent representation of the number.
  print('toDouble: ${date.toDouble()}');
}
