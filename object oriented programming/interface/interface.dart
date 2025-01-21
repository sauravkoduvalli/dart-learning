/*
  - An interface is a contract between classes.
  - Dart has no interface keyword. Instead, all classes are implicit interfaces.
  - Uses an 'implements' keyword to specify which interfaces a class implements.
  - Use an abstract class as an interface.
  - A class can implement multiple interfaces, but only can extend a single class.
  - When implementing an interface, you must provide concrete implementations for all the methods defined in the interface.
  
  Why to use interfaces?
  ----------------------
  - Polymorphism: interfaces allows to treat objects of different types in a uniform way.
  - Code reusability: can reuse the code across different parts of the application.
  - Loose coupling: promotes loose coupling between components, making code modular and esier to maintain.
  - Testing: interfaces make it easier to write unit tests by allowing you to mock implementation.

*/

/// The [Logger] class is an interface which has a [log] methods with a [String] paramter [message].
/// The [ConsoleLogger] class implementes the interface [Logger], and thus provide the [log] method in the [Logger] with implementation, which prints the message passed.
/// Similarly, the [FileLogger] class implements the Logger and [log] method prints the message.
/// Now, both [ConsoleLogger] and [FileLogger] classes implements the [Logger] interface. It means that, we can swap them in the application easily.
/// For example, the [App] class uses the logger interface. At runtime, we can select whether to use [ConsoleLogger] or [FileLogger] to log a message.

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('Log "$message" to the console');
  }
}

class FileLogger implements Logger {
  @override
  void log(Pattern message) {
    print('Log "$message" to a file');
  }
}

class App {
  Logger logger;
  App({required this.logger});

  void run() {
    logger.log("App is restarting");
  }
}

void main() {
  var app = App(logger: ConsoleLogger()); // here, we can provide the [CnsoleLogger] or [FileLogger] as per requirement.
  app.run();
}


