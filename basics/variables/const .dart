/* const keyword */

/* 
  - The const keyword allows you to define constants that are known at compile time.
  - A constant is an identifier whose value doesn’t change. To define a constant.
  - The value of a constant is not changed, you need to initialize its value to a constant immediately when you define it.
  - Dart can infer the type of the constant from the value, you can omit its type like this: const constantName = value;
*/

void main() {
  const toMile = 1.609; // this will be constsnt to convert to mile
  final distanceInKm = 5;

  double distanceInMile = distanceInKm / toMile;

  print('$distanceInKm km = $distanceInMile mile');

  /// It’s important to notice that a constant only accepts a value that is truly constant at compile time. For example, the following will result in an error:
  /// The program attempts to define constant and assign the value returned by DateTime.now() to the currentTime constant.
  /// But, the value of the DateTime.now() can be determined at the run-time, not compile-time. So dart will throw error.
  /// To fix this, change the variable declaration to final
  // const currentTime = DateTime.now();
  // print('Current Date time is: $currentTime');
}
