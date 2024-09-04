/* --- STRINGS --- */

/*
  - String is a sequence of character or more precisely a sequesce of UTF-16 code units.
  - It is used to store the text value.
  - To create a string literal use 'single quotes' or "double-quotes". 
  - The multiline string literal can be created using the '''triple-quotes'''. 
  - Strings are immutable; it means you cannot modify it after creation.
*/

void main() {
  /// declaring a string variable
  String name;

  /// Assigning a value to name variable.
  name = 'Saurav K'; 
  print(name); // Saurav K

  /// If you want to use a single quote (') in a single-quoted string, you need to escape it using a backslash character
  print('it\'s me.');

  /// if you use a double quote in a double-quoted string, you need to escape it using the backslash characters
  print("\"Dart is Awesome\", they said.");

  /// Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote 
I am also writing here.
''';
  print(multiLineText);

  /// String Concatenation: '+' operator is used to concatenate/merge two string values.
  final firstName = 'Saurav';
  final lastName = ' Koduvalli';
  final fullName = firstName + lastName;
  print(fullName); // Saurav Koduvalli

  /// String Interpolcation: Technique to manipulate the string and create the new string by adding another value. 
  /// To embed an expression in a string, you use the ${expression} syntax.
  final greet = 'Hi ${firstName} ${lastName}';
  print(greet);

  /// Use str[index] to access a character at the index of the str
  final String language = 'Dart';
  print(language[0]); // D
  print(language[1]); // a
  print(language[2]); // r
  print(language[3]); // t

  /// basic string properties
  print(firstName.length); // 'length' property will return number of charecters in a string; Length of the string.
  print(firstName.isEmpty); // 'isEmpty' property will check string value is empty or not and return a boolean value.
  print(firstName.runes); // 'runes' property will convert the charecters into appropriate unicode.
  print(firstName.codeUnits); // 'codeUnits' property will returns an unmodified list of the UTF-16 code units of this string.

  /// basic string methods
  print(firstName.toLowerCase()); // method will convert all charecters to lower case.
  print(firstName.toUpperCase()); // method will convert all charecters to upper case.
  print(fullName.trim()); // method will remove all the whitespaces before start and after end of the string.
  print(firstName.replaceAll("Saurav", "Replaced String")); // method will replaces all substring that matches the specified pattern with a given string.
  print(fullName.contains("Sau")); // method will check the given string is there in the string, if yes returns TRUE, else False.
  print(firstName.split('')); // method will splits the string at matches of the specified delimiter and returns the list of the substring.
  print(firstName.substring(1,5)); // It returns the substring from start index, inclusive to end index.
  print(firstName.toString()); // convert other data type to string value.
}
