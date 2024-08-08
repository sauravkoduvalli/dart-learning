/* --- for loop --- */

/*
  - Used when we know how many times a block of code will execute.
  - The loop iteration starts from the initial value. It executes only once.
  - The condition is a test-expression and it is checked after each iteration. The for loop will execute until false returned by the given condition.
  - The incr/decr is the counter to increase or decrease the value.
*/

void main() {
  // print all numbers from 0 to 10
  for (var i = 0; i <= 10; i++) {
    print(i);
  }
  
  // print all even numbers from 1 to 20
  for (var i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
