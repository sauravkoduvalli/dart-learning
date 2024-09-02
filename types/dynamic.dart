/* --- Dynamic --- */

/*
  - 'dynamic' is a special type that indicates that a variable can hold any type of value.
  - It is quite similar to var datatype in Dart, but the difference between them is the moment you assign the data to variable with var keyword it is replaced with the appropriate data type.
  - the Dart compiler does not check the type of the dynamic variable at compile-time.
  - With dynamic, the type checking is deferred until runtime, which can lead to runtime errors if the variable is used incorrectly.
  - If you do not specify a type for a variable and do not use the var keyword (which infers the type), Dart treats the variable as dynamic by default.
*/

void main() {
  /// declaring a dynamic variable
  dynamic dynamicVariable = "String value";

  /// 'dynamicVariable' initialised with string value. So the data type will be string.
  print(dynamicVariable.runtimeType); 

  /// 'dynamicVariable' assigned with integer value
  dynamicVariable = 100;

  /// now, the type of 'dynamicVariable' is int.
  print(dynamicVariable.runtimeType); 

  /// The run-time error can happend when using dynamic with Type-Specific Operations:
  /// initialise the 'newValue' dynamic variable with String value
  dynamic newValue = "Dart"; 

  /// Assigning the 'newValue' variable with another datatype value.
  newValue = 11;

  /// converting the newValue variable using 'toUpperCase()' method, a string object method. 
  /// This will casue run-time error, since now the type of newVlaue variable is int.
  print(newValue.toUpperCase()); 
}