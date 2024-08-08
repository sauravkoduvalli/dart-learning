/* --- do...while loop --- */

/*
  - similar to the while loop but only difference is that, it executes the loop statement and then check the given condition.
*/

void main() {
  var minNum = 1;
  var MaxNum = 10;

  do {
    print(minNum);
    minNum = minNum + 1;
  } while (minNum <= MaxNum);
}

