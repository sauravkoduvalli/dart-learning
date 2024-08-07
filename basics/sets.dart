/* --- Sets --- */

/*
  - Unordered, unique collection of different values of same type.
  - Same functionality as array, but unordered (Cannot keep the order of items).
  - Does not store duplicated values. That is, Set only contain unique values.
  - It is unordered, so it can be faster than lists while working with a large amount of data.
  - A set can be declared/initialised in 2 ways:-
    1) Declared using curly beraces {}, proceeded by a type argument.
    2) Declare a variable type 'Set' with curly braces.
*/

void main(){// Declaration method 1:
var set1 = <int>{1,2,3,4};
print('set1: ${set1}');

// Declaration method 2:
final Set<int> set2 = {5,6,7,8};
print('set2: ${set2}');

// properties of sets
 Set<int> numberSet = {1,2,3,4,5,6,7,8,9,0};
 numberSet.first; // To get first value of Set.
 numberSet.last; // To get last value of Set.
 numberSet.isEmpty; // To check and return boolean value if the set is empty (TRUE) or not(FALSE).
 numberSet.isNotEmpty; // To check and return boolean value if the set is not empty (TRUE) or not(FALSE).
 numberSet.length; // It returns the length of the Set.

 // methods of sets
final Set<String> fruits = {"Apple", "Orange", "Mango"};
fruits.contains('Mango'); // to check whether the Set contains specific items or not, and return TRUE or FALSE.
fruits.add('Grapes'); // Add new item to Set
fruits.remove('Mango'); // Removes item from the set.
fruits.addAll(['Pineapple, Cherry, Watermelon']); // Insert the multiple values/iteratable to the given Set.
fruits.removeAll(['Pineapple','Cherry']); // Remove the items/iteratable from the gien list.
fruits.retainAll(["Apple", "Orange", "Grapes", "Watermelon"]); // retain the elemets which are given in the list, other items will removed.
fruits.forEach((element) => print(element)); // print all Set items by using loops.
fruits.elementAt(2); // Returns the index value of element.
fruits.clear(); // Removes all elements from the Set.

final Set<int> firstSet = {1,2,3,4,5,6};
final Set<int> secondSet = {1,2,3,4};
var diff = firstSet.difference(secondSet); // Creates a new Set with the elements of this that are not in other.
print(diff); // {5, 6}
var intersect = firstSet.intersection(secondSet); // Find common elements in two sets.
print(intersect); // {1, 2, 3, 4}
var union = firstSet.union(secondSet); // creates a new set with elements in both set.
print(union); // {1, 2, 3, 4, 5, 6}
}