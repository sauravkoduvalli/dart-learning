/* --- do...while loop --- */

/*
  - Similar to the while loop, but only difference is that, evaluates the expression at the end of each iteration. Therefore, it’s called a POSTSET LOOP.
  - The do while statement always executes the first iteration whether the result of the expression is true or not.

*/

void main() {
  int start = 0;

  /// Program will count from 1 to 5 using do while loop.
  do {
    start++;
    print(start);
  } while (start < 5);

  print('\n'); // New line

  /// Using the do while statement to display odd numbers
  int count = 0;

  do {
    if (count % 2 != 0) {
      print(count);
    }
    count++;
  } while (count <= 10);
}
