/* --- Function Parameter --- */

/*
  - Parameter is the process of passing values to the functions.
  - The values passed to the functions, that is arguments, must match the number of paramters defined.
  - We can define any number of parameter in a function.
  - We can provide default parameter value when defining the function.
  - Different types of parameters in function are:
  1) Positional Parameter:
    - In positional parameter, arguments must be passed in the same order as it is defined on parameters.
    - The program will show error when there is a mismatch in the order or number of the arguments passed.
  2) Named Paramter:
    - Named parameter will provide a meaning to the parameters in a function.
    - We can use curly braces{} to define named parameter.
    - For null safty, we can use '?' in parameters, thus we can make that perticular parameter optional. Means, by default it will accepts null when function is called.
    - Parameter names also mentioned in function call. So no need to follow the order.
  3) Optional Parameter:
    - By defining parameters inside sqaure brackets[], we can make parameters optional.
*/

// Positional Parameters.
void printDetails(String name, int age) {
  print('My name is ${name}, and I\'m ${age} years old.');
}

// Providing Default Value On Positional Parameter 
// If we won't provide any value to age argument, it will take 18 as its value.
void voterDetails(String name, [int age = 18]) {
  print('My name is ${name}, and I\'m ${age} years old.');
}

// Named Parameters
void carDetails({String? brand, String? model, String? color}) {
  print('I own a $brand $model model, with $color color');
}

// Use Of Required In Named Parameter - parameter defined with required, must be passed as argument when function is called. 
void printInfo({required String name, required String gender}) {
  print("Hello $name your gender is $gender.");
}

// Optional Parameter
void studentDetails(String studentName, department, int rollNumber,
    [String? electiveCoursse]) {
  print(
      'Roll number $rollNumber $studentName, studying in $department department, choose $electiveCoursse as elective course.');
}

void main() {
  printDetails('Saurav K', 27);
  voterDetails('Saurav'); // here, age is optionals, as it has a default value 18. Or we can provide value as it needs other values.
  carDetails(brand: 'BMW', model: 'X5', color: 'Black');
  printInfo(name: 'Saurav', gender: 'Male'); // both named parameters are required.
  studentDetails('Saurav k', "IT", 1007,'Artificial Intelligence'); // here, electiveCource argument is optional.
}
