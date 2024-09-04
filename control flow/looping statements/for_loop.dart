/* --- for loop --- */

/*
  - Used when we know how many times a block of code will execute.
  - The for statement has expressions initializer, condition, iterator, and a loop body.

  - Initializer:
    - The for loop statement executes the initializer only once before entering the first iteration of the loop. 
    - Typically, you declare and initialize a loop variable in the initializer.

  - Condition:
    - The condition is a Boolean expression.
    - The for statement evaluates the condition before each iteration.

  - Iterator:
    - The for loop statement executes the iterator after each iteration.

  - Loop Body:
    - The loop body consists of one or more statements surrounded by curly braces.
    - If the condition is true, the for statement executes the loop body in each iteration.

  - All expressions including initializer, condition, and iterator are optional. Hence, you can have an 'INDEFINITE FOR LOOP'.
  - In this case, you need to use the 'break' statement to terminate the loop.
*/

void main() {
  ///  print all numbers from 0 to 5
  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  print('\n'); // new line

  /// Using the Dart for loop to calculate the total of integers
  int total = 0;
  for (int number = 0; number <= 10; number++) {
    total = total + number;
  }
  print('Total of integers is: $total');

  print('\n'); // new line

  /// Using the Dart for loop to display every character of a string
  String hobby = "Coding";

  for (int i = 0; i < hobby.length; i++) {
    print(hobby[i]);
  }
}
