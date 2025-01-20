/*  
  - Null safety is a feature that helps you avoid common null exception errors.
  - oprators like, !, ??, ??=, ?. and late keyword are used to handle null values.
  - Null safety is enabled by default in Dart 2.12 and later.
  
    1) Non-Nullable Assertions (!) :  
      - The non-nullable assertion operator (!) is used to assert that a variable is not null.
      - If the variable is null, a runtime error will be thrown.

    2) Nullable Access (?.):
      - The null-aware access operator (?.) is used to access properties and methods of an object that might be null.
      - If the object is null, the expression evaluates to null.

    3) Conditional Property Access (?.):
      - The conditional property access operator (?.) is used to access properties of an object that might be null.
      - If the object is null, the expression evaluates to null.

    4) Null-aware Assignment/Default value Access (??=):
      - The null-aware assignment operator (??=) assigns a value to a variable only if that variable is currently null.
      - If the variable is not null, the value is not assigned.

    5) Null-aware Operators (??):
      - The null-aware operator (??) is used to provide a default value if a variable is null.
      - If the variable is not null, the value is not used.

    6) Collection If:
      - The collection if syntax is used to conditionally add elements to a collection.
      - If the condition is true, the element is added to the collection.

    8) Late keyword:
      - The late keyword is used to declare a non-nullable variable that is initialized at a later time.
      - The variable must be initialized before it is used, or a runtime error will be thrown.

    9) Required keyword:
      - The required keyword is used to mark a named parameter as required.
      - When calling a function with required parameters, you must provide a value for the required parameter.

*/

void main() {
  
  // 1. Non-Nullable Assertions (!)
  String? name = null;
  try {
    print(name!.length); // throws an error
  } catch (e) {
    print(e);
  }

  // 2. Nullable Access (?.)
  String? message = null;
  print(message?.length); // null

    
  // 3. Conditional Property Access (?.)
  String? text = null;
  print(text?.length); // null

  // 4. Null-aware Assignment/Default value Access (??=)
  String? text1 = null;
  text1 ??= 'Hello';
  print(text1); // Hello

  // 5. Null-aware Operators (??)
  String? text2 = null;
  print(text2 ?? 'Hello'); // Hello

  // 6. Collection If
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int?> evenNumbers = [for (int number in numbers) if (number % 2 == 0) number];
  print(evenNumbers); // [2, 4, 6, 8, 10]

  // 8. Late keyword
  late String name1 = 'John Doe';
  print(name1); // John Doe

  // 9. Required keyword
  void greet({required String name, String message = 'Hello'}) {
    print('$message, $name!');
  }
  greet(name: 'John'); // Hello, John!

}
