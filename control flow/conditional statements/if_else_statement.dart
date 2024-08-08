/* ---if-else statement */

/*
  - The if block is executed when the condition return TRUE, otherwise, the esle block is executed
*/

void main() {
  final int a = 5;
  final int b = 10;
  // greater ot not
  if (a>b) {
    print('A is greater than B');
  } else {
    print('B is greater than A');
  }

  // even or odd
  if (a%2==0) {
    print('A is an Even Number');
  } else {
    print('A is and Odd Number');
  }
}