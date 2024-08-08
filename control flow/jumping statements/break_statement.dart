/* ---Break statement --- */

/*
  - Used to break the loop immediately without checking the condition.
  - It used to exit the loop and program control moved ouside the loop.
*/

void main() {
  // The loop will execute until the value of i become less ythan or equal to 10. 
  // However, the break says go outside of the loop when value of i becomes 5.
  for (var i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i); 
  }


  // The wile loop execute until i becomes less that or equals to 10.
  // check the condition when value of i becomes 5. it breaks the loop.
  int i = 1;
  while (i<=10) {
    print(i);
    if (i==5) {
      break;
    }
    i++;
  }
}