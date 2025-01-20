/*
- Runes are used to represent a Unicode code point.
- A rune is an integer representing a Unicode code point.
- The code point for a character is represented as a sequence of one or more Unicode escape sequences.
- The escape sequence for a Unicode code point is \uXXXX, where XXXX is a 4-digit hexadecimal value. (hexadecimal value: 0-9, A-F)
  ex: \u0041 represents the character 'A'.

*/

void main() {
  // Example 1: Using a rune
  var heart = '\u2665';
  print('Heart: $heart');

  // Example 2: Using a rune
  var laughingEmoji = '\u{1f600}';
  print('Laughing Emoji: $laughingEmoji');

  // Example 3: Using a rune
  var smileyEmoji = '\u{1f603}';
  print('Smiley Emoji: $smileyEmoji');

  // Example 4: Using a rune
  var alienEmoji = '\u{1f47d}';
  print('Alien Emoji: $alienEmoji');
}