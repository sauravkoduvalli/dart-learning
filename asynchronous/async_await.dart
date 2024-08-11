/* --- async...await in dart --- */

/*
  async:-
    - 'async' keyword used to define asynchronous functions, which will return Future Object.
    - an async function signifies that it would carry out some work that will take some time and will return a Future object that wraps the result of that work.
    - To define an Asynchronous function, add 'async' before the function body.
  
  await:-
    - 'await' keyword used within an 'async' function.
    - Helps to delay the execution of async function until the awaited Future has finished.
    - Use the 'await' keyword to get the complete result of an asynchronous expression.
*/

void main() {
  print('Start');
  getData();
  print('End');
}

// 'async' handles the states of the program where any part of the program can be executed.
// 'await' holds the part of the program until the rest of the program executed.
// try-catch handles the exception that could come after the program is executed.
void getData() async {
  try {
    String data = await fetchData();
    print(data);
  } catch (e) {
    print('Something went wrong!');
  }
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Data fetched';
}
