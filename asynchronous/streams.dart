/* --- Streams in dart --- */

/*
  - Stream is used to handle sequences of asynchronous events or data over time.
  - Streams are similar to Future, but instead of delivering a single value, they can deliver many values over time.
  - Streams are ideal for handling events like user inputs, data received from a web service, or even file system changes.
  - 
  - There are 2 type of streams:-
    1) single-subscription stream
      - Can only be listened to by a single listener at a time.
      - Used only when to process the stream data once.
      - For example, a stream that processes HTTP responses or Reading a File (because the file contents are read once)

    2) broadcast stream:-
      - Can have multiple listeners simultaneously.
      - Suitable for events that can be consumed by multiple listeners, such as UI events or messages from a server.
      - Ex: Monitoring Sensor Data (an application that needs to monitor data from a sensor (like temperature or humidity) and update multiple parts of your app (e.g., UI components, logging, alert system) based on this data.).

  Creating streams:-
    1) using 'streams.fromIteratable'
    2) using 'StreamController'
    3) using 'async*' (Stream generator)

  Listening streams:-
    1) using 'await for'
    2) using 'Stream.listen'

  Types Of Classes In Stream:-
  1) Stream: It represents an asynchronous stream of data.
  2) EventSink: It is like a stream that flows in the opposite direction.
  3) StreamController: It simplifies stream management, automatically creating a stream and sink, and also providing methods for controlling a stream’s behavior.
  4) StreamSubscription: It saves the references of the subscription and allows them to pause, resume or cancel the flow of data they receive.


  Method Used In Stream:-
  1) listen(): It returns a StreamSubscription object representing the active stream-producing events. The stream subscription allows you to pause, resume the subscription after a pause, and cancel the subscription completely.  
  2) onError(): Stream can provide errors just like a future can; by adding an onError() method, you can catch and process an mistakes.
  3) cancelOnError: This property or method is true by default but can be set to false to keep the subscription going even after an error.
  4) onDone: This method can execute some code when the stream is finished sending data, such as when a file has been completely read.

  Keywords Used In Stream:-
  1) async*: It gives a Stream. async* returns a bunch of future values one at a time. It gives the result wrapped in the stream.
  2) yield: It is a keyword that returns single value to the sequence, but doesn’t stop the generator function.
  3) yield*: Used to call its Iterable or Stream function recursively.
  4) 
*/

// function that returns a stream
import 'dart:async';

Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

// [3] Create stram using async* (Stream Generator)
// You can use an async* function to generate a stream of values asynchronously.
// This method is particularly useful for producing values over time.
Stream<int> numberStream2() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  // [1] create a stream from an iterable, such as a list.
  Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  // use 'await for' loop to get the value from stream
  await for (int number in numberStream) {
    print(number);
  }

  // // use 'await for' loop to get the value from getUserName() stream function
  // await for(String name in getUserName()) {
  //   print(name);
  // }

  // [2] Create a single-subscription stream using 'StreamController'.
  // A StreamController gives you more control over a stream, allowing you to add events to the stream programmatically.
  // You can create a single-subscription or broadcast stream using StreamController.
  StreamController<int> controller = StreamController<int>();

  /// Adding data to the stream
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

  // Listening to the stream
  controller.stream.listen((event) {
    print('received $event');
  });

  // Closing the stream
  controller.close();

  // [1] using 'await for' loop to print events/data from numberStream2()
  await for (int number in numberStream2()) {
    print(number);
  }

  // [2] You can use the listen method to start receiving events from the stream.
  // It allows you to handle data, errors, and the completion of the stream.
  numberStream.listen(
    (data) => print('Data: $data'), // On data event
    onError: (err) => print('Error: $err'), // On error event
    onDone: () => print('Stream is done'), // On stream completion
    cancelOnError: false, // Whether to cancel on error
  );

  // create broadcast stream
  StreamController<int> broadcastController = StreamController.broadcast();

  // first listener
  broadcastController.stream.listen((event) {
    print('Broadcast Listener 1: $event');
  });
  // Second listener
  broadcastController.stream.listen((event) {
    print('Broadcast Listener 2: $event');
  });

  // adding data to streams
  broadcastController.add(1); 
  broadcastController.add(2);

  // CLosing the stream
  broadcastController.close();
}
