/*
  - An object collection that stores data in the form of key-value pairs.
  - Each value is associated with a key, which is used to access its corresponding value.
  - Both Keys and values can be of any type.
  - Key must be unique, but same value can be occur multiple times.
  - Map can be declared unsing curly braces{}, and each key-value pair is seperated by commas.
  - Value of key can be accessed using this form -> [key].
  - A map value can be any object including NULL.
  - Map can be declared/initialized in 2 ways:
    1) Map literals
    2) Map Constructor
*/

void main(){
/// Using map literals
final map1 = {'name': 'Saurav', 'age': 27, 'location': 'Kannur'};
print(map1['age']);

/// Using Map constructor
final Map map2 = {'name': 'Raji', 'age': 26, 'location': 'Kochi'};
print(map2['name']);

/// Proprties of Map
final Map person = {'name': 'Adhi', 'age': 2, 'location': 'Kannur'};
var personKeys = person.keys; // To get all keys.
print(personKeys); // (name, age, location)
var personValues = person.values; // To get all values.
print(personValues); // (Adhi, 2, Kannur)
person.isEmpty; // Return true or false based on object/map is empty or not.
person.isNotEmpty; // Return true or false based on object/map is empty or not.
var personLength = person.length; // It returns the length of the Map.
print(personLength); // 3

person['country'] = 'India'; // Adding new item to existing Map.
person['location'] = 'Bengaluru'; // Updating an existing item in the Map.
print(person); // {name: Adhi, age: 2, location: Bengaluru, country: India}

// Loops in Map
// You can use any loop in Map to print all keys/values or to perform operations in its keys and values.
// for in loop
for(MapEntry person in person.entries) {
  print('key is ${person.key}  and value is ${person.value}');
}

// forEach loop: forEach loop is used to iterate over the elements of the map and perform some operation on them.
person.forEach((key, value) {
  print('key is ${key}  and value is ${value}'); 
});

/// Methods of Map
person.keys.toList(); // Convert all Maps keys to List.
person.values.toList(); // Convert all Maps values to List.
person.containsKey('name'); // Return true or false based on key existance.
person.containsValue('Adhi'); // Return true or false based on value existance.
person.remove('age'); // Removes [key] and its associated value, if present, from the map.
person.removeWhere((key, value) => value < 2); // Removes all entries of this map that satisfy the given [test].
}