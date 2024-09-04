/* ---If-else-if statement */

/*
  - Used to check muliple conditions and execute different statements if a condition is true. Otherwise nothing will execute.
  - It is used when we have to make decisions from more than two possiblities.
*/

void main() {
  String season = "";
  String month = "Feb";

  if (month == "Jan" || month == "Feb" || month == "March") {
    season = "Spring";
  } else if (month == "Apr" || month == "Jun" || month == "July") {
    season = "Summer";
  } else if (month == "Aug" || month == "Sep" || month == "Oct") {
    season = "Autumn";
  } else if (month == "Nov" || month == "Dec" || month == "Jan") {
    season = "Winter";
  } else {
    season = "Invalid";
  }

  print(season);
}
