/* --- Isolate in Dart ---*/

/*
  - An Isolate is a mechanism for parallel execution that allows you to run code in a separate memory space, independent of the main thread.
  - Unlike threads in many other languages, Dart's isolates do not share memory, which helps to avoid common concurrency issues such as race conditions.
  - Instead, isolates communicate with each other by passing messages.

  Why Use Isolates:-
    - Dart code runs in a single-threaded environment, meaning all the code execution happens on the main thread by default.
    - While Dart's asynchronous features (Future, async/await, Stream) allow you to perform non-blocking operations, they don't allow true parallel execution.
    - For CPU-intensive tasks, such as complex computations or image processing, running these tasks on the main thread can cause your application to freeze or become unresponsive.
    - By offloading heavy computations to an isolate, you ensure the main thread remains responsive, making isolates crucial for performance optimization in Flutter apps.
  
  Key Characteristics of Isolates:-
    1) Independent Memory: 
      - Each isolate has its own memory heap. 
      - This isolation ensures that no data races or memory corruption issues occur, but it also means that sharing data between isolates requires message passing.
    2) Message Passing:
      - Communication between isolates is done through message passing using SendPort and ReceivePort.
    3) Long-running Tasks: 
      - Isolates are particularly useful for tasks that take a long time to complete, like file processing, data parsing, or computationally intensive operations.
*/

import 'dart:isolate';

// Function that will be run in the isolate
void heavyComputation(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum); // Send the result back to the main isolate
}

void main() async {
  // Create a ReceivePort to receive messages from the isolate
  final receivePort = ReceivePort();

  // Spawn an isolate, passing the heavyComputation function and the SendPort
  await Isolate.spawn(heavyComputation, receivePort.sendPort);

  // Listen for messages from the isolate
  receivePort.listen((message) {
    print('Sum: $message'); // Print the result
    receivePort.close(); // Close the receive port
  });

  print('Main thread is free to perform other tasks.');
}
