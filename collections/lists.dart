/* ---Lists --- */

/*
  - List is similar to an array, which is the ordered collection of the objects.
  - Used to store multiple values in the same variable.
  - List are defined by storing all elements inside sqare brackets[], seperated by commas(,).
  - Index: Each element has its index number that tells the element position in the list. The index number is used to access the particular element from the list, such as list_name[index].
  - Length: The list indexing starts from 0 to length-1 where length denotes the numbers of the element present in the list.
  - Elements: The List elements refers to the actual value or dart object stored in the given list.
  - List are of 2 types: Fixed-length list and Growable List.
*/

void main() {
  var list1 = [10, 15, 20, 25, 25];
  print(
      'list1 index 2 item: ${list1[2]}'); // accessed elelment in index number of 2, which is 20

  // The Fixed-Length Lists are defined with the specified length.
  // We cannot change the size at runtime.
  var fixedLengthList = List<int>.filled(
      5, 0); // This will create List of 5 integers with the value 0.
  print('fixedLengthList: ${fixedLengthList}');

  // A List defined without a specified length is called Growable List.
  // The length of the growable List can be changed in runtime.
  final List<int> growableList = [210, 21, 22, 33, 44, 55];
  print('growableList: ${growableList}');

  // basic properties of lists
  print('length: ${growableList.length}'); // will return the length of the list.
  print('First item in list: ${growableList.first}'); // will return the first element in the list.
  print('Last item in list: ${growableList.last}'); // will return the last element in the list.
  print('list isEmpty: ${growableList.isEmpty}'); // return TRUE if list is empty, else return FALSE
  print('list isNotEmpty: ${growableList.isNotEmpty}'); // return TRUE if list is not empty, else return FALSE.
  print('list in reversed order: ${growableList.reversed}'); // will return the elememts in reversed order.

  // basic methods of lists
  print('Index of item 33 in list: ${growableList.indexOf(33)}'); // will return the index of given item in the list. Returns -1 if [element] is not found.

  // Inserting elements to list
  growableList.add(27); // Add one element at a time in the end of the list and returns the modified List object.
  print(growableList); // [210, 21, 22, 33, 44, 55, 27]
  growableList.addAll([101,111]); // Insert the multiple values to the given List, and each value is separated by the commas and enclosed with a square bracket ([]).
  print(growableList); // [210, 21, 22, 33, 44, 55, 27, 101, 111]
  growableList.insert(3,333); // Provides the facility to insert an element at a specified index position.
  print(growableList); // [210, 21, 22, 333, 33, 44, 55, 27, 101, 111]
  growableList.insertAll(6,[12, 45]); // Insert the multiple value at the specified index position.
  print(growableList); // [210, 21, 22, 333, 33, 44, 12, 45, 55, 27, 101, 111]
  growableList.replaceRange(0, 4, [1,2,3,4]); // replace the range of list with the iteratable from start to end index.
  print(growableList); // [1, 2, 3, 4, 33, 44, 12, 45, 55, 27, 101, 111]

  // Removing elements from list
  growableList.remove(111); // Removes one element at a time from the given List.
  print(growableList); // [1, 2, 3, 4, 33, 44, 12, 45, 55, 27, 101]
  growableList.removeAt(7); // Removes an element from the specified index position and returns it.
  print(growableList); // [1, 2, 3, 4, 33, 44, 12, 55, 27, 101]
  growableList.removeLast(); // Remove the last element from the given List.
  print(growableList); // [1, 2, 3, 4, 33, 44, 12, 55, 27]
  growableList.removeRange(5,8); // Removes the item within the specified range. End index element is exclusive (positions greater than or equal to start and less than end).
  print(growableList); // [1, 2, 3, 4, 33, 27]

  // using 'foreEach' loop to iterate and apply modifications over each item in the list.
  growableList.forEach((element) {
    print(element); // printing each elemets in the list
  });

  // using map method, we can iterate and modify the items in the list
  final modifiedList = growableList.map((e) => e * 2); // multiplying each element by 2 and assign the modifiels value to new list variable "modifiedList".
  print(modifiedList); // (2, 4, 6, 8, 66, 54)

  // we can use spread operator(...) to combine multiple list of same type.
  final firstList = [1,2,3,4];
  final secondList = [5,6,7,8];
  final combinedList = [...firstList, ...secondList];
  print(combinedList); // [1, 2, 3, 4, 5, 6, 7, 8]

  // conditions in list
  bool sad = true; //  change it to false, 'Beer' will not print.
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart); // [milk, ghee, Beer]

  // use 'where();' to filter specific items - Creates a new lazy [Iterable] with all elements that satisfy the predicate [test].
  final List<int> numberList = [1,2,3,4,5,6,7,8,9,0];
  List<num> evenNumberList = numberList.where((element) => element.isEven).toList(); // Creates a [List] containing the elements of this [Iterable].
  print(evenNumberList); // [2,4,6,8,0]
}
