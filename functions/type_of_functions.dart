/* --- Type of Functions --- */

/*
  Different types of functions are:
  1) No parameter and no return type: Functions with no parameters and no return type. return type will be void.
  2) Parameter and no return type: Functions with paramters but no return type.
  3) No parameter and return type: Funtions with return type but no parameters.
  4) paramter and return type: Functions with both parameters and return type.
*/

void main() {
  // function with no parameter and no retunr type
  void printName() {
    print('Saurav K');
  }

  printName();

  // function with two parameters and no return type
  void sum(int num1, int num2) {
    print('Sum of ${num1} and ${num2} is ${num1 + num2}');
  }

  sum(10, 5);

  // function with no parameters and return type
  num valueOfPi() {
    return 3.14;
  }

  valueOfPi();

  // function with parameters and return type
  double calculateInterest(double principle, double rate, double time) {
    double interest = principle * rate * time / 100;
    print("The simple interest is $interest.");
    return interest;
  }
  calculateInterest(5000, 11, 12);
}
