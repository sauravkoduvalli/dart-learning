/* --- while loop --- */

/*
  - Executes a block of code until the given expression is false.
  - It is more beneficial when we don't know the number of execution.
*/

void main() {
  var a =1;
  var maxnum = 10;

  while (a<maxnum) {
    print(a);
    a = a+1;
  }
}