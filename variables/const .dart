/* 
  - The 'const' variable allows you to define constants that are known at compile time.
  - The value of a constant is not changed, you need to initialize its value to a constant immediately when you define it.
  - Dart can infer the type of the constant from the value.
    Ex: const constantName = 'value'; // The type of constantName is String, inferred by Dart compiler at runtime.
*/

void main() {
  const toMile = 1.609; // this will be constsnt to convert to mile
  final distanceInKm = 5;

  double distanceInMile = distanceInKm / toMile;

  print('$distanceInKm km = $distanceInMile mile');

  // It’s important to notice that a constant only accepts a value that is truly constant at compile time. 
  // For example, you can’t assign a value that is calculated at runtime to a constant.
  // const pi =  DateTime.now(); // Error: 'DateTime' is not a constant expression.
  
}
