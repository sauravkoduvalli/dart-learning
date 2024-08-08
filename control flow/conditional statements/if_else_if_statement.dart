/* ---If-else-if statement */

/*
  - Used to check a set of test expressions and execute different statements based on the conditions.
  - It is used when we have to make decisions from more than two possiblities.
*/

void main() {
  var a = 130;
  var b = 20;
  var c = 0;

  if (a >= b && a >= c) {
    print("A is greater");
  } else if (b >= a && b >= c) {
    print("B is greater");
  } else {
    print("C is greater");
  }
}
