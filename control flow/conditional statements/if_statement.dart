/* --- if statement --- */

/*
  - Allows to execute a block of code when the given condition is TRUE.
  - The condition evaluates Boolean values, TRUE or FALSE, and the decision is based on these boolean values.

*/

void main() {
  bool isWeekend = true;

  if (isWeekend) {
    print("Let's play!");
  }

  /// Checking multiple conditions in a single if statement
  String weather = 'Sunny';

  /// if both the condition is true, then the if statement will execute.
  if (isWeekend && weather == 'Sunny') {
    print('It\'s a sunny weekend. Come on, let\'s play');
  }

  /// nested if statement
  if (isWeekend) {
    if (weather == "Sunny") {
      print('It\'s a sunny day. Come on, let\'s play');
    }
    if (weather == "rainy") {
      print("It's raining out there. We cannot play today");
    }
  }
}
