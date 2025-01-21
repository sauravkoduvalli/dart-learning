/*
  - A function can have any number of required positional parameters. 
  - These can be followed either by named parameters or by optional positional parameters (but not both).

  Different types of parameters in function are:

  1) Positional Parameter:
    - The arguments must be passed in the same order as it is defined on function declaration, parameter definition.
    - The program will show error when there is a mismatch in the order or number of the arguments passed.
    - By specifying the parameter inside the square brackets [], we can make them optional.

  2) Named Paramter:
    - Named parameter will provide a meaning to the parameters in a function.
    - We can use curly braces{} to define named parameter.
    - Named parameters are optional unless they're explicitly marked as required.
    - If you don't provide a default value or mark a named parameter as required, their types must be nullable as their default value will be null.
    - When calling a function, you can specify named arguments using paramName: value.
    - To define a default value for a named parameter besides null, use = to specify a default value. The specified value must be a compile-time constant.

  3) Optional Parameter:
    - By defining parameters inside sqaure brackets[], we can make parameters optional.
    - If you don't provide a default value, their types must be nullable as their default value will be null
*/

/// a funtion consist of 2 positional parameters, name and age.
void printDetails(String name, int age) {
  print('My name is ${name}, and I\'m ${age} years old.');
}

/// function consist of two positional paramters name and age.
/// here, age is a optional parameter which has a default value of empty string.
void voterDetails(String name, [String title = '']) {
  if (title.isEmpty) {
    print('Hello $name');
  } else {
    print('Hello, $title $name');
  }
}

// function consist of one positional parameter and two named parameters.
void carDetails(String brand, {required String model, String color = ''}) {
  if (color.isNotEmpty) {
    print('I own a $brand $model model, with $color color');
  } else {
    print('I own a $brand $model model.');
  }
}

// function consist of 3 positional parameters, 2nd and 3rd are optional.
String say(String from, message, [String? device]) {
  var result = '$from says $message';
  if (device != null) {
    result = '$result with a $device device';
  }
  return result;
}

void main() {
  // position paramters
  // try chnage th order of argumets will throw error.
  printDetails('Saurav K', 27);

  // here, second value is optional. by default, it's value is empty string.
  voterDetails('Saurav', 'Mr.');

  // in this function, brand is positional parameter, model is required parameter, color is optional,
  carDetails('Rolls Royce', model: 'Cullinan', color: 'Black');

  // calling function without the optional parameter
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');

  // calling this function with the third parameter
  assert(say('Saurav', 'Dart is awesome', 'android') ==
      'Saurav says Dart is awesome with a android device');
}
