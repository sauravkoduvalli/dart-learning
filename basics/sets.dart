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

 
}