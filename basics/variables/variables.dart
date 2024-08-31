/* --- Variables --- */
// A variable is the name assigned to the memory location where you stores the data, and used that variable to fetch the data.

// Syntax to declare a variable is 'type variableName'
String? name; // '?' is used to make the varibale nullable;

//Syntax To declare multiple variables of the same type is 'type variableNname1, variableName2, variableName3;'
String? firstName, lastName;

/* --- Types of valriables --- */
/*
  1) Static variables:
    - The static keyword is used for a class-level variable and method that is the same for every instance of a class, this means if a data member is static, it can be accessed without creating an object.
    - The static keyword allows data members to persist Values between different instances of a class.
    - There is no need to create a class object to access a static variable or call a static method: simply put the class name before the static variable or method name to use them.
  2) dynamic variable: 
    - This is a special variable initialised with keyword dynamic.
    - The variable declared with this data type can store implicitly any value during running the program.
    - It is quite similar to var datatype in Dart, but the difference between them is the moment you assign the data to variable with var keyword it is replaced with the appropriate data type.
  3) final variables: 
    - A final variable can only be set once and it is initialized when accessed. 
    - final dont’ allow re-assigning the variable to a new value but they do allow mutation of the value internally.
  4) const: 
    - A constant variable is a compile-time constant and its value must be known before the program runs.
    - const don’t allow re-assigning the variable to a new value and also don’t allow any type of mutation.
  5) var: 
    - var allows both mutations you can assign a new value to it and also change it’s internal value.
  6) late: 
    - 'late' keyword is used to declare a non-nullable varibale that that will be initialized at a later point of time, rather than at the point of declaration.
    - 
*/

// dynamic and var variables example
void main() {
  // variable declared with 'dynamic' keyword will accept any datatype of values in future.
  dynamic dynamicVariable = "Saurav K"; // initialize with string value.
  print(dynamicVariable);

  dynamicVariable = 27061997; // re assign with integer value.
  print(dynamicVariable);

  // variable declared with 'var' keyword will not accept other data type of values in future, once it is initialized with a specific data type.
  var varVariable = "Saurav K";
  print(varVariable);
  // uncomment the below code
  // varVariable = 27061997; // Will show this compile-time error -> A value of type 'int' can't be assigned to a variable of type 'String'.

  // final variable
  final country = "India"; // assigning a value without data type.
  print(country);
  final String state = "Kerala"; // assigning a value with data type.
  print(state);

  const birthYear = 1997; // const variable should be initialized at the declaration time
  print(birthYear);
}
