/* --- Dart try..catch --- */

/*
  - Exceptions are errors that mey occur in the program.
  - To prevent the crashing of the program on exception, we use try...catch statement.

  Stack trace
  -----------
  - A stack trace is a list of function or method calls that lead to the exception. 
  - The catch() accepts a second parameter that represents a stack trace.

  The on clause
  -------------
  - Use on clauses in the try-catch statement to handle the specific exceptions.
  - Also, We can add the catch to the on the statement to access the exception object.

  finally statement
  -----------------
  - The finally is an optional block of the try-catch statement, always executes whether an exception occurs or not.
  - oftenlly used to clean up the resources. Ex: to close file or DB connection.
  - if an exception occurs the program jumps to the catch block and continues the finally block
  - If no exception occurs, the program run until the end of the try block and continues the finally block.

*/

import 'dart:io';

void main() {
  /// initializing an string variable and print its 5th charecter, which means in the 4th index.
  final String language = 'dart';

  File file;
  IOSink? writer;

  // print('charected in the 5th position is ${language[4]}'); // this will throw a RangeError, since there is nnno value in the 5th postion or 4th index.

  /// To prevent the program from crashing, we need to handle the exception. To do that, we use the [try-catch] statement.
  /// Inside the try block, place the code that may cause the exception.
  /// If any exception occurs, ith skips the code in the try block and jumps to the catch block.
  /// Inside the catch block, place the code that handles th exception.
  /// Also, we can access error object.
  try {
    print('charected in the 5th position is ${language[4]}');
  } on RangeError catch (e, s) {
    print('The valid range for the index is [0..${language.length - 1}].');
  } catch (error, stackTrace) {
    print(error);
    print(stackTrace);
  }

  try {
    file = new File('message.txt');
    writer = file.openWrite();
    writer.write('Hello');
  } on FileSystemException {
    print('File not found');
  } catch (e) {
    print(e);
  } finally {
    writer?.close();
  }
}
