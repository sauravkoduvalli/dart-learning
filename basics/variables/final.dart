/* final keyword */

/*
  - To define constants whose values are known at runtime, you use the 'final' keyword keyword with the following syntax: final type finalVariable;
  - Unlike the const keyword, you don’t need to initialize the finalVariable in the declaration immediately.
  - Once you assign a value to a final variable, you cannot reassign a value to it.
  - If you declare a final variable and initialize its value immediately, you can use type inference to make the declaration shorter. For example: : final currentTime = DateTime.now();
*/

void main() {
  /// the following example show how to declare a final variable currentDateTime and assign the current date time return by DateTime object to it.
  
  final DateTime currentTime;
  currentTime = DateTime.now();
  print('Current Dat and time is: $currentTime');

  /// If you  try to re-assign the currentTime variable with another value, Dart will throw error.
  /// To fix this issue, Try making 'currentTime' non-final.
  // currentTime = DateTime.utc(1997, 6, 27, 2, 14, 7);
}
