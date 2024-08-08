/* --- Continue statement --- */

/*
  - Used to skips the current iteration of a loop. It will bypass the statement of the loop
  - It does not terminate the loop but rather continues with the next iteration.
*/

void main() {
  // The loop will execute till the value of i becomes less than 0 from initial value 10.
  // when the value of i becomes 5, it skip the execution of that perticular block and continue with next iteration.
  for (var i = 10; i > 0; i--) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  int i = 10;
  while (i > 0) {
    if (i == 7) {
      i--;
      continue;
    }
    print(i);
    i--;
  }
}
