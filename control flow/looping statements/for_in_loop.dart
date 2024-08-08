/* --- for...in loop */

/*
  - unlike normal for loop, It only takes dart objects and expression as an iterator and iterates elements one at a time.
  - The value of the element is bound to the variable which is valid and available for the loop body.
  - Loop will execute until no element left in the iterator.
*/

void main() {
  final List<int> naturalNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var number in naturalNumbers) {
    if (number % 3 == 0) {
      print(number); // will print muliples of 3.
    }
  }
}
