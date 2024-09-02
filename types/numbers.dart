/* --- Numbers --- */

/*
  - 'int' type helps to store numeric values in a variable.
  - Unsigned numbers are always a positive number. Numbers can be either negative or positive.
  - subset are 'int' and 'double'. 
  - Use 'int'(without decimal) for declaring integers or whole numbers.
  - Use 'double'(with decimal) for fractional numbers or floating-point numbers,
*/

void main() {
  final int date = 27;
  final double doubleValue = 270.998;

  /// converting an string into integer, use `int.parse(expresison)`.
  int quantity = 5;
  String amount = "100";
  int total =  quantity * int.parse(amount);
  print('Total is: $total'); // 500

  /// converting 'quantity' int varibale to double
  var inToDouble = quantity.toDouble();
  print(inToDouble.runtimeType); // int

  /// converting 'amount' string varibale to double
  var stringToDouble = double.parse(amount);
  print(stringToDouble.runtimeType); // double

  /// create raw string in dart. Special characters won’t work here. You must write r after equal sign.
  String withoutRawString = "The value of price is \t $date"; // regular String
  print(withoutRawString);
  String withRawString = r"The value of price is \t $date"; // raw String
  print(withRawString);

  /// basic properties
  print('isEven: ${date.isEven}'); // check given value is even, if Yes return TRUE, else FALSE.
  print('isOdd: ${date.isOdd}'); // check given value is even, if Yes return TRUE, else FALSE.
  print('isFinite: ${date.isFinite}'); // If the given number is finite, then it returns TRUE.
  print('isInfinite: ${date.isInfinite}'); // If the given number is Infinite, then it returns TRUE.
  print('isNegative: ${date.isNegative}'); // If the number is negative then it returns TRUE.
  print('sign: ${date.sign}'); // It returns -1, 0, or 1 depending upon the sign of the given number.
  
  /// basic methods
  print('toInt: ${doubleValue.toInt()}'); // It will convert double value to int.
  print('abs: ${doubleValue.abs()}'); // It gives the absolute value of the given number.
  print('ceil: ${doubleValue.ceil()}'); // It gives the ceiling value of the given number.
  print('floor: ${doubleValue.floor()}'); // It gives the floor value of the given number.
  print('truncate: ${doubleValue.truncate()}'); // Returns the integer after discarding fraction digits.
  print('round: ${doubleValue.round()}'); // It returns the round of the number.
  print('remainder: ${date.remainder(2)}'); // It gives the truncated remainder after dividing the two numbers.
  print('toDouble: ${date.toDouble()}'); // It gives the double equivalent representation of the number.
}
