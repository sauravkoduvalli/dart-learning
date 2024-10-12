/* --- Continue statement --- */

/*
  - The continue statement allows you to skip the current iteration of the loop prematurely and start the next iteration immediately.
  - The 'continue' statement is only valid when you use it inside a loop, including while, do while, and for loops.
*/

void main() {
  /// The for loop iterates the number from 0 to 9 and assigns the nnumber to the variable i in each iteration.
  /// if the current value of i is even the the continue statement execute and skip the furthe code inside loop. So that the print will not execute.
  /// Otherwise, (the value of i is odd or the if condition is false) the continue statement will not execute and it will print the value of i of that perticular iteration.
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  print('\n'); // new line

  /// Using the continue statement in a while loop example.
  /// First, each iteration of while will increase the value of i by one until i becomes 9.
  /// Second, if the variable i is an even number, the condition of the if statement inside the while loop will execute and skip the remaining statements after it.
  /// Third, if the variable i is odd number, it will add an odd number to the total variable and print the current value of i.
  /// Finally, display the the total number after the loop.
  /// 
  int i = 0, total = 0;
  while (i < 10) {
    i++;
    if (i % 2 == 0) {
      continue;
    }
    total = total + i;
    print(i);
  }
  print('total = $total');
}
