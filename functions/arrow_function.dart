/* --- Aroow Function --- */

/*
  - A special syntax for representing function which has only one statement.
  - Syntax: return_type functionName(parameters...) => function_expression;
  - the return type of the function must match the type of the value returned by the expression.
  - It's a short hand syntax for any function that has only one expression. That is, shorthand for { return expr; }.
*/

// defines the add() function that returns the sum of two integers
int add(int x, int y) {
  return x + y;
}

// Since the body of the add() function has only one line, you can convert it to an arrow function like this
// int add(int x, int y) => x + y; 

//  Simple Interest Without Arrow Function
double findSimpleinterest(double principle, double rate, double time) =>
    principle * rate * time / 100;

void sumOfTwoNumbers(num num1, num num2) =>
    print('Sum of ${num1} and ${num2} is ${num1 + num2}');

void main() {
  var interest = findSimpleinterest(3000, 10, 6);
  print(interest);
  sumOfTwoNumbers(2, 3.5);
}
