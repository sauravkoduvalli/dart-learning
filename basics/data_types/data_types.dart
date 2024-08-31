/* --- Data Types --- */

// Data Type scpecifies what type of data/value will be stored in a variable. Each variable has its data type.

/*
1) STRING:
  - 'String' data types helps to store text data.
  - Represents sequence of charecters in side single or double quotes.
*/

String name = "Saurav K";

// Multi Line Using Single Quotes
String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

// Special chareacters in string '\n' will start from new line in a string value, '\t' will add tab space in a string value.

// You can also create raw string in dart. Special characters won’t work here. You must write r after equal sign.
String withoutRawString = "The value of price is \t $name"; // regular String
String withRawString = r"The value of price is \t $price"; // raw String

/*
2) NUMBERS: 
   - Helps to store numeric values in a variable. 
   - We can use either 'int'(with decimal) or 'double'(without decimal), both are subset of 'num' data type. 
*/
int num1 = 100; // without decimal point.
double num2 = 130.202415; // with decimal point.
num num3 = 50;
num num4 = 50.4;

final roundNum2 = num2.toStringAsFixed(
    2); // round the double value upto 2 decimal places as string value.

/*
3) BOOLEAN:
    - Data type which holds the value as either TRUE or FALSE.
    - 'bool' is the keyword to represent variables with boolean values.
*/
bool isMarried = false;

/*
4) LISTS: 
    - list is similar to Arrays, which is the ordered collection of objects
    - holds multiple values in a single variable.
    - List are defined by storing all elements inside sqare brackets[], seperated by commas(,).
    - each items in a list is associated with their index number.
    - Using the index number (always starts with 0) can perform manipulations or modifiaction to that elements.
    - supports different types of in-built properties and methods, such as length, map(), etc...
*/
List<String> fruits = ['apple', 'banana', 'mango'];

/*
5) SETS: 
    - An unordered collection of unique items of same type.
    - You can store unique data in sets.
    - declared by using the {} curly braces proceeded by a type argument, or declare the variable type Set with curly braces {}.
*/
Set numbers = <int>{1, 2, 3, 4, 5, 6};
Set<String> car = {'Volvo', 'BMW', 'Nissan GTR'};

/*
6) MAPS:
    - A map is an object where you can store data in key-value pairs.
    - Each value is associated with its key, and it is used to access its corresponding value.
    - Both keys and values can be any type.
    - Each key occurs only once, but you can use same value multiple times.
    - declared by using curly braces {} ,and each key-value pair is separated by the commas(,).
    - The value of the key can be accessed by using a square bracket([]).
*/
final mapUsingLiterals = {1: "Volvo", 2: "BMW", 3: "Nissan GTR"};

// void main() {
//   final mapUsingConstructor = new Map();
//   mapUsingConstructor['name'] = 'Saurav';
//   mapUsingConstructor['age'] = 27;
//   mapUsingConstructor['profession'] = "Mobile App Developer";
// }

/*
7) RUNES:
    - Used to find Unicode values of String.
    - The Unicode value of a is 97, so runes give 97 as output.
*/

void main() {
String value = "a";
print(value.runes);
}
