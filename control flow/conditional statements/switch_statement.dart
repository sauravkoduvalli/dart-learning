/* --- Switch statement --- */

/*
  - It is simplified form of nested if statement.
  - The value of a varibale is compared with multiple cases, and if any match case found, then it executes a block of code accosiated with that perticular case.
  - If the expression doesn’t equal any value in a set, the switch statement will execute the default branch. The default branch is optional.
  - Use group cases to execute the same statement that corresponds to multiple values.
*/

void main() {
  int dayNumber = 5;
  String dayName = "";

  switch (dayNumber) {
    case 1:
      dayName = "Sunday";
      break;
    case 2:
      dayName = "Monday";
      break;
    case 3:
      dayName = "Tuesday";
      break;
    case 4:
      dayName = "Wednesday";
      break;
    case 5:
      dayName = "Thursday";
      break;
    case 6:
      dayName = "Friday";
      break;
    case 7:
      dayName = "Saturday";
      break;
    default:
      dayName = "Invalid day";
      break;
  }
  print('Today is $dayName');

  /// Dart switch statement with group cases
  String monthName = "Sep";

  switch (monthName) {
    case 'Jan':
    case 'Feb':
    case 'Mar':
      print("You are in the First Quater of this year");
      break;
    case 'Arp':
    case 'May':
    case 'Jun':
      print("You are in the Second Quater of this year");
      break;
    case 'Jul':
    case 'Aug':
    case 'Sep':
      print("You are in the Third Quater of this year");
      break;
    case 'Oct':
    case 'Nov':
    case 'Sep':
      print("You are in the Fourth Quater of this year");
      break;
    default:
      print('Invalid month');
      break;
  }
}
