/* --- Synchronous Programming --- */
/*
  - Synchronous Programming execute the code line by line, one at a time.
  - Synchronous operation means a task that needs to be solved before proceeding to the next one.
*/


/* --- Asynchronous Programming --- */
/*
  - Asynchronous programming is a way to write program that allows to do multiple tasks at the same time.
  - Time consuming operations like fetching data form the internet, writing to database, reading from a file, and downloading a file can be performed without blocking the main thread of execution.
  - Program execution continues to the next line without waiting to complete other work.
  - It represents the task that doesn’t need to solve before proceeding to the next one.
  - Dart provides several features for handling asynchronous operations, including 'Future', 'async', 'await', and 'Stream'.
*/

void synchronousFunction() {
  // assume each is print is a task with different complexities, each will execute line by line, one after another, regardless of its complexity and time taken to complete.
  // Each next operations has to wait until the last one to complete. To solve this issue asynchronous programming is here.
  print("First - small task"); // 1 sec
  print("Second - high complex task"); // 5 sec
  print("Third - small task"); // 1 sec
  print("Fourth - medium complex task"); // 3 sec
  print("Fifth - small task"); // 1 sec
}

Future<String> asynchronousFunction() async {
  print('Data fetch initiated...');
  await Future.delayed(Duration(seconds: 2)); // Simulates a network request
  return 'Data fetched';
}

void main() {
  synchronousFunction();
  asynchronousFunction().then((value) => print(value)); 
}

