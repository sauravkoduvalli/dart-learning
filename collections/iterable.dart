/* 
  - An iterable is an abstract class that represents a collection of objects that can be accessed sequentially  
  - Sequential Access: You can access elements in a specific order, typically from the beginning to the end.
  - Lazy Evaluation: Iterables often use lazy evaluation. This means that elements are not generated or processed until they are actually needed. This can improve performance, especially when dealing with large collections.

  Examples of Iterables:

  Lists: List<int> numbers = [1, 2, 3];
  Sets: Set<String> names = {'Alice', 'Bob', 'Charlie'};
  Maps: Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35};
  Strings: String myString = "Hello"; (can be iterated over individual characters)
  
*/

 void main(List<String> args) {
  // Example 1: Iterating over a List
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }

  // Example 2: Iterating over a Set
  Set<String> names = {'Alice', 'Bob', 'Charlie'};
  for (String name in names) {
    print(name);
  }

  // Example 3: Iterating over a Map
  Map<String, int> ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35};
  for (String name in ages.keys) {
    int age = ages[name]!;
    print('$name is $age years old');
  }

  // Example 4: Iterating over a String
  String myString = "Hello";
  for (int i = 0; i < myString.length; i++) {
    print(myString[i]);
  }

  // other iterable methods and properties

  // 1. forEach() - Applies a function to each element in the iterable
  numbers.forEach((int number) {
    print(number);
  });
  
  //  2. map() - Transforms each element in the iterable into a new value
  List<int> doubledNumbers = numbers.map((int number) {
    return number * 2;
  }).toList();
  print(doubledNumbers); // [2, 4, 6, 8, 10]

  // 3. where() - Filters elements in the iterable based on a condition
  List<int> evenNumbers = numbers.where((int number) {
    return number % 2 == 0;
  }).toList();
  print(evenNumbers); // [2, 4]

  // 4. reduce() - Combines all elements in the iterable into a single value
  int sum = numbers.reduce((int value, int element) {
    return value + element;
  });
  print(sum); // 15

  // 5. any() - Checks if any element in the iterable satisfies a condition
  bool hasEvenNumber = numbers.any((int number) {
    return number % 2 == 0;
  });
  print(hasEvenNumber); // true

  // 6. every() - Checks if every element in the iterable satisfies a condition
  bool allEvenNumbers = numbers.every((int number) {
    return number % 2 == 0;
  });
  print(allEvenNumbers); // false

  // 7. firstWhere() - Returns the first element that satisfies a condition
  int firstEvenNumber = numbers.firstWhere((int number) {
    return number % 2 == 0;
  });
  print(firstEvenNumber); // 2

  // 8. take() - Returns the first n elements from the iterable
  List<int> firstThreeNumbers = numbers.take(3).toList();
  print(firstThreeNumbers); // [1, 2, 3]

  // 9. skip() - Skips the first n elements in the iterable
  List<int> numbersAfterTwo = numbers.skip(2).toList();
  print(numbersAfterTwo); // [3, 4, 5]

  // 10. toSet() - Converts the iterable into a Set
  Set<int> numberSet = numbers.toSet();
  print(numberSet); // {1, 2, 3, 4, 5}

  // 11. toList() - Converts the iterable into a List
  List<int> numberList = numberSet.toList();
  print(numberList); // [1, 2, 3, 4, 5]

  // 12. join() - Combines all elements in the iterable into a single string
  String joinedNumbers = numbers.join(', ');
  print(joinedNumbers); // 1, 2, 3, 4, 5

  // 13. isEmpty - Checks if the iterable is empty
  bool isNumbersEmpty = numbers.isEmpty;
  print(isNumbersEmpty); // false

  // 14. isNotEmpty - Checks if the iterable is not empty
  bool isNamesNotEmpty = names.isNotEmpty;
  print(isNamesNotEmpty); // true

  // 15. length - Returns the number of elements in the iterable
  int numbersLength = numbers.length;
  print(numbersLength); // 5

  // 16. elementAt() - Returns the element at a specific index in the iterable
  int thirdNumber = numbers.elementAt(2); 
  print(thirdNumber); // 3

  // 17. contains() - Checks if the iterable contains a specific element
  bool hasNumberThree = numbers.contains(3);
  print(hasNumberThree); // true


  // 18. whereType() - Filters elements in the iterable based on their type
  List<dynamic> mixedList = [1, 'two', 3, 'four', 5];
  List<int> numbersOnly = mixedList.whereType<int>().toList(); 
  print(numbersOnly); // [1, 3, 5]
  
  // 19. expand() - Transforms each element in the iterable into multiple values
  List<int> numbersExpanded = numbers.expand((int number) {
    return [number, number * 2];
  }).toList();
  print(numbersExpanded); // [1, 2, 2, 4, 3, 6, 4, 8, 5, 10]

  // 20. cast() - Converts the iterable into an iterable of a specific type
  List<dynamic> mixedList2 = [1, 'two', 3, 'four', 5];
  List<int> numbersOnly2 = mixedList2.cast<int>().toList();
  print(numbersOnly2); // [1, 3, 5]

  // 21. clear() - Removes all elements from the iterable
  numbers.clear();

  // 22. addAll() - Adds all elements from another iterable to this iterable
  numbers.addAll([6, 7, 8, 9, 10]);

  // 23. remove() - Removes the first occurrence of a specific element from the iterable
  numbers.remove(6);

  // 24. removeWhere() - Removes all elements that satisfy a condition
  numbers.removeWhere((int number) {
    return number % 2 == 0;
  });

  // 25. retainWhere() - Removes all elements that do not satisfy a condition
  numbers.retainWhere((int number) {
    return number % 2 == 0;
  });

  // 26. sort() - Sorts the elements in the iterable
  numbers.sort();

  // 27. shuffle() - Randomly shuffles the elements in the iterable
  numbers.shuffle();

  // 28. sublist() - Returns a sublist of elements from the iterable
  List<int> sublist = numbers.sublist(0, 3);
  print(sublist); // [1, 2, 3]

  // 29. getRange() - Returns a range of elements from the iterable
  Iterable<int> range = numbers.getRange(0, 3); // Returns an Iterable object inclusive of the start index and exclusive of the end index
  print(range); // (1, 2, 3)

  // 30. setAll() - Replaces elements in the iterable with elements from another iterable
  List<int> newNumbers = [11, 12, 13, 14, 15];
  numbers.setAll(0, newNumbers);  // Replaces elements in numbers starting from index 0 with elements from newNumbers

  // 31. setRange() - Replaces a range of elements in the iterable with elements from another iterable
  List<int> newNumbers2 = [16, 17, 18];
  numbers.setRange(0, 3, newNumbers2); // Replaces elements in numbers from index 0 to 3 with elements from newNumbers2

  // 32. fillRange() - Replaces a range of elements in the iterable with a specific value
  numbers.fillRange(0, 3, 0); // Fills elements in numbers from index 0 to 3 with the value 0
  print(numbers); // [0, 0, 0, 14, 15] 
}