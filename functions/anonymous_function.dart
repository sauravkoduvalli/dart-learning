/*
  - An Anonymous function is a function that dose not have a name and return type.
  - Also called Lambda or closure.
  - It can have zero or any number of arguments with an optional type annotation.
  - Assign an anonymous function to a variable and use the variable to call the function.
*/

void show(Function fn) {
  for (var i = 0; i < 10; i++) {
    if (fn(i)) {
      print(i);
    }
  }
}

void main() {
  // anonymous function to find the sum of two integer.
  var sum = (int x, int y) {
    return x + y;
  };
  print(sum(1, 2));

  print('-------------------------');

  // find the cube of a number using anonymous function.
  var cube = (int cubeNumber) {
    return cubeNumber * cubeNumber * cubeNumber;
  };
  print(cube(3));

  print('-------------------------');

  // In practice, you often pass an anonymous function to another function that accepts a function as an argument.
  // calling the show function and pass an anonymous function that returns true, if the number is even.
  show((int x) {
    return x % 2 == 0;
  });

  print('-------------------------');

  // an anonymous function that returns another anonymous function.
  // The anonymous function accepts an integer (x) and returns another anonymous function.
  // The returned anonymous function accepts an integer and returns the multiplication of x and y.
  var multipler = (int x) {
    return (int y) => x * y;
  };

  // calling the multiplier function and assign the result to the doubleIt variable of type Function (int) => int.
  var doubleIt = multipler(20);
  // Since the doubleIt is a function, you can call it to double a number
  print(doubleIt(20));
}
