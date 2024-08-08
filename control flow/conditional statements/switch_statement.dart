/* --- Switch statement --- */

/*
  - Used to avoid the long chain of the if-else statement.
  - It is simplified form of nested if statement.
  - The value of a varibale is compared with multiple cases, and if any match case found, then it executes a block of code accosiated with that perticular case.
  - The break statement is essential to use at the end of each case. If we do not put the break statement, then even the specific case is found, it will execute all the cases until the program end is reached.
  - if anu match condition found, the the default match will be executed.
*/

void main() {
  final rollNumber = 7;
  switch (rollNumber) {
    case 1:
      print('Student name is Anoop');
      break;
    case 3:
      print('Student name is Cyriac');
      break;
    case 5:
      print('Student name is jishnu');
      break;
    case 7:
      print('Student name is Saurav');
      break;
    case 9:
      print('Student name is Sreedeep');
      break;
    default:
      print('No match found');
      break;
  }
}
