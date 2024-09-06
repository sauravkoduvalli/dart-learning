/* --- Function as First class objects --- */

/* 
  - In dart, functions are first class objects, which means, we can treat a fucntion as a value of other types.
  - So
    1) Assign a function to a variable.
    2) Pass a function to another function as argument.
    3) Return a function from another function.

*/

int add(int num1, int num2) {
  return num1 + num2;
}

/// isOddNumber() function that returns true if a number is odd
bool isOddNumber(int x) {
  return x % 2 != 0;
}

/// isEvenNumber() function that returns true if a number is even:.
bool isEvenNumber(int x) {
  return x % 2 == 0;
}

/// The show() function that accepts a function as an argument.
/// Inside the show() function, iterate from 0 to 10. In each iteration, display the value if it makes the result of the fn() true.
/// On each iteration, the if condition checks the each function's return value, and print the value in console.
void show(Function fn) {
  for (var i = 0; i < 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}

/// function that returns the sum of two integers
int addition(int x, int y) {
  return x + y;
}

/// function that returns the sum of two integers
int subtraction(int x, int y) {
  return x - y;
}

/// function that returns the add function if the argument is '+' or the subtract function if the argument is '-'
Function calculation(String operation) {
  if (operation == '+') return addition;
  if (operation == '-') return subtraction;
  return add;
}

void main() {
  // Assign a fucntion to a variable.
  // don’t use the parentheses () after the add function name to assign to another variable
  var func = add;
  var sum = func(10, 1);
  print(sum);

  print('\n'); // new line

  // Passing a function to another function as an argument
  // pass the isEvenNumber as an argument into show function
  print('Even numbers:');
  show(isEvenNumber);

  print('\n'); // new line

  // pass the isOddNumber as an argument into show function
  print('Odd numbers:');
  show(isOddNumber);

  print('\n'); // new line

  // Returning a function from a function
  // calling the calculation function, and assign the result to the fn variable, and call the function via the fn variable
  // This code displays 30 because the calculation() function returns the addition() function
  var fun = calculation('+'); 
  print(fun(10, 20)); 

  // calling the calculation function, and assign the result to the fn variable, and call the function via the fn variable
  // This code displays 20 because the calculation() function returns the subtraction() function
  fun = calculation('-');
  print(fun(30, 10));
}
