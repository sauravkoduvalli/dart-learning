/* --- Future in dart --- */

/*
  - Future represents a value or error that is not yet available.
  - It is used to represent a potential value, or error that will be available at some time in the future.
  - Use 'Future' keyword to handle tasks like fetching data from internet, file I/O operations, where the result is not immediatly available.
*/

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3)); // it will delayed for 3 seconds.
  return 'Data fetch completed';
}

void main() {
  print('Fetching data is initiated');
  fetchData().then((value) => print(value));
  print('Fetching data...');
}