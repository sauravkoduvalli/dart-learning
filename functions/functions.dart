/* --- Functions in dart --- */

/*
  - A function is a block of code that performs a specific task.
  - Used when some statements are repeatedly occuring in the progra. Thus helps reusablity of the code in the program.
  - In dart, functions are also objects.
  - Advantages:
    1) Avoid code repeatation.
    2) Easy to divide complex program into smaller parts.
    3) Helps to write clean code.

  syntax:-
    return_type functionName(parameter1, parameter2, ...) {
      // funtion body
    }

  return_type: Type of the output of the function. It can be void, String, double, boolean, int, etc... If the function return anything, then use void as return type.
  fucntionName: name of the function which will always follow lowerCamelCase.
  parameters: Inputs to the function, which can write inside the brackets().


  Parameter Vs Arguments
  ----------------------
  Parameter: It is the name and data type which is defined as the inputs for a function.
  Argument: The actual value which is paased into ther function.

*/

void main() {
  // function to add two number which will accepts two parameters 'num1' and 'num2', which has a return type of 'num'.
  void addTwoNumbers(num1, num2) {
    var sum = num1 + num2; 
    print('Sum of ${num1} and ${num2} is ${sum}'); // 9
  }

  // passing two arguments 2 and 7.
  addTwoNumbers(2, 7);
}
