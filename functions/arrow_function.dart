/* --- Aroow Function --- */

/*
  - A special syntax for representing function which has only one statement.
  - Represented by arrow symbol =>
  - Its a short hand syntax for any function that has only one expression. That is, shorthand for { return expr; }.
  - Syntax: return_type functionName(parameters...) => function_expression;
*/

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
