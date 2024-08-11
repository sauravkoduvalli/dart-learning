/* --- Anonymous function --- */

/*
  - An Anonymous function is a regular function but it does not have a name with it.
  - Also called Lambda or closure.
  - It can have zero or any number of arguments with an optional type annotation.
  - We can assign the anonymous function to a variable, and then we can retrieve or access the value of the closure based on our requirement.
*/

void main() {
  const fruits = ["Apple", "Mango", "Banana", "Orange"];

  fruits.forEach((fruit) {
    print(fruit);
  });

  // find the cube of a number using anonymous function.
  var cube = (int cubeNumber) {
    return cubeNumber * cubeNumber * cubeNumber;
  };
  print(cube(3));
}
