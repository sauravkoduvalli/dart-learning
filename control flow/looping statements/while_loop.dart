/* --- while loop --- */

/*
  - The while statement evaluates a Boolean expression and executes statements repeatedly as long as the result of the expression is TRUE.
  - The while statement evaluates the expression before each iteration. And it’ll execute statements again and again as long as the result of the expression is TRUE.
  - If the result of expression is FALSE, the while statement exits and passes the control to the statement after it.
  - Therefore, you need to change some variables inside the body of the while statement to make the expression FALSE at some point. Otherwise, you’ll have an indefinite loop. An indefinite loop executes the statements repeatedly until the program crashes.
  - Since the while statement checks the expression at the beginning of each iteration, it is often called a PRESET LOOP.
*/

void main() {
  int current = 0;

  /// This loop will print value of 'current' on each iteration by incrementing 1 to it.
  while (current < 5) {
    current++;
    print(current);
  }

  print('\n'); // new line

  /// program to print even values between 0 and 10, using wile loop.
  int start = 0;
  while (start <= 10) {
    start++;
    if (start % 2 == 0) {
      print(start);
    }
  }

  print('\n'); // new line

  /// program to count numbers in reverse order using while loop
  int count = 10;

  while (count > 0) {
    print(count);
    count--;
  }
}
