/* --- Boolean --- */

/*
  - Dart uses 'bool' to represent boolean values.
  - Type bool type has two constants True and False.

  In practice, boolean values often use in control statements such as if else, while do-while and for.
  
  Logical Operators
  Logical AND (&&) - Accepts two boolean values and return TRUE if both of the are TRUE. otherview return FALSE
  Logical OR (||) - Accepts two boolean values and return FALSE if both values are FALSE, otherwise return TRUE.
  Logical NOT (!) - Accepts a boolean value and negate it.

  Short-circut Evaluation:-
    - Both logical And and OR operators are short-circuted.
    - if the first value is FALSE, then logical AND operator will be FALSE regardless of the socond value. Therefore, Logical AND operator will not evaluate the second value if the first value is FALSE.
    - if the first value is TRUE, then the logical OR operatot will return TRUE regardless of the second value. Therefore, Logical OR operator will not evaluate the second value if the first value is TRUE.
    
*/



void main() {
  /// declares a variable with the bool type and initialize its value to true
  bool isActive = true;
  print(isActive); // true

  // program which will show how logical AND will work
  bool isUsernameCorrect = true;
  bool isPasswordCorrect = true;

  bool isAuthenticated = isUsernameCorrect && isPasswordCorrect;
  print('Authentication is $isAuthenticated');

  // program which will show how logical OR will work
  bool passwordLengthMatch = false;
  bool passwordContainNumbers = false;

  bool isValidPassword = passwordContainNumbers || passwordLengthMatch;
  print("Password validation is $isValidPassword");

  /// program will show how logical NOT works
  bool isVegetarien = false;
  print(!isVegetarien); // TRUE

  /// program will show how short-circut will work in logical AND
  bool value1 = false;
  bool value2 = true;

  bool result = value1 && value2; // as you can see the value of 'value2' variable is not evaluating by the dart compiler.
  print('Short-circute AND: $result');

  /// program will show how short-circut will work in Logical OR
  bool isHuman = false;
  bool fromEarth = true;

  bool isAlien = fromEarth || isHuman ; // as you can see the value of 'fromEarth variable is not evaluating by the dart compiler.
  print("Are you an Alien: $isAlien"); 

}