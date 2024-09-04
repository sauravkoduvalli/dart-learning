/* ---Break statement --- */

/*
  - The break statement prematurely terminates a loop including while, do while, and for loops.
  - Used to break the loop immediately without checking the condition.
  - It used to exit the loop and program control moved ouside the loop.
*/

void main() {
  /// The loop will execute until the value of i become less than or equal to 10.
  /// However, the break says go outside of the loop when value of i becomes 5.
  for (var i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  print('\n'); // new line

  /// Using Dart break statement inside a for loop examples.
  /// the loop executes until the value of i becomes the length of the "message variable"
  /// however, the if condition will check in each iteration when the i equals to 's',
  /// then the loop break and control goes to the next statement after the loop.
  String message = "Dart is awesome";
  for (int i = 0; i < message.length; i++) {
    if (message[i] == 's') {
      print('The letter s is found at $i index');
      break;
    }
  }

  print('\n'); // new line

  /// The wile loop execute until i becomes less that or equals to 10.
  /// check the condition when value of i becomes 5. it breaks the loop.
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
    if (i == 5) {
      break;
    }
  }

  print('\n'); // new line

  /// Using the Dart break statement inside a do while loop.
  /// Initially, the do block will execute in do-while loop, and checks the consition in while loop.
  /// loop iterate until when the value of 'index' become less than the length of 'carName' length.
  /// if condition will execute, when 'carName' has a letter 'r', then the control will exit from the do while loop.
  String carName = 'Range Rover';
  int index = 0;
  do {
    if (carName[index] == 'r') {
      print('CarName consist of letter \'r\' at the index of $index');
      break;
    }
    index++;
  } while (index < carName.length);
}
