/* --- super keyword --- */

/*
  - Unlike other OOP languages such as C#, in Dart, a subclass doesn’t inherit constructors from its parent class.
  - Use the 'super' keyword to call the constructor of the parent class to initialize the properties from the parent class.
*/

class Engine {
  final int horsepower;
  final int torque;
  Engine({required this.horsepower, required this.torque});
}

class Car extends Engine {
  String brand;
  int launchYear;

  Car(
      {required this.brand,
      required this.launchYear,
      required int horsepower,
      required int torque})
      : super(horsepower: horsepower, torque: torque);

  void showCarDetails() {
    print('Brand: $brand, launched in $launchYear');
    print('Engine horsepower: ${horsepower} and torque: ${torque}');
  }
}

void main() {
  var car1 =
      Car(brand: 'Toyota', launchYear: 1997, horsepower: 1000, torque: 999);
  car1.showCarDetails();
}
