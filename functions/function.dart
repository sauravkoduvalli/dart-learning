/* --- Functions in dart --- */

/*
  - A function is a block of code that performs a specific task.
  - Used when some statements are repeatedly occuring in the program. Thus helps reusablity of the code in the program.
  - In dart, functions are also objects and have a type, Function. This means that functions can be assigned to variables or passed as arguments to other functions.

  - Advantages:
    1) Avoid code repeatation.
    2) Easy to divide complex program into smaller parts.
    3) Helps to write clean code.

  syntax:-
    returnType functionName(parameter1, parameter2, ...) { // function signature
      // funtion body
    }

  A function has 2 parts: 

  1) function signature:-
    - A function signature has a return type, function name, and parameter list.

    a] return type:
      - A return type specifies what type of value a function returns. 
      - If a function return anything, you can use 'void' as return type. 
      - return type can be void, String, double, boolean, int, etc...

    b] function name:
      - Name of the function which will always follow lowerCamelCase.

    c] Parameter:
      - Inputs to the function, which can write inside the paranthesis().
      - A function can have zero, one, or multiple parameters.

  2) function body:-
    - The code surrounded by the curly braces{}, that follows th function name is the function body.
    - A function body consist of one or more statements that perform a specific task.


  Parameter Vs Arguments
  ----------------------
  Parameter: A parameter is a variable that you specify in the function signature when you define the function.
  Argument: An argument is a value or variable that you pass into the function when calling it.


  Returning a value: 
    - A function may return a value.
    - To return a value from a function, you use the return statement.

  Return type inference:
    - Dart can infer the type of the return value.
    - Therefore, you don’t need to explicitly specify the return type.
*/

/// function to add two number which will accepts two parameters 'num1' and 'num2', which has a return type of 'num'.
int addTwoNumbers(num1, num2) {
  var sum = num1 + num2;
  return sum;
}

String greet(String name, String title) {
  return 'Hi $title $name';
}

void main() {
  // The print function will show the result of the addTwoNumbers function with arguments 2 and 7.
  // example for return type inference
  print('Result of adding two numbers is ${addTwoNumbers(2, 7)}'); // 9

  // functions with multiple parameters
  var greetResult = greet('Saurav', 'Mr.');
  print(greetResult);
}
