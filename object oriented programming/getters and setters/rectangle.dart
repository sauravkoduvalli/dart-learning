
class Rectangle {
  double _height = 0;
  double _width = 0;

  // getter for height
  double get height => _height;

  // setter for height
  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Height must be greater than zero.');
    }
  }

  // getter for width
  double get width => _width;

  // setter for width
  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Width must be greater than zero.');
    }
  }

  // getter for are of the rectangle (read-only property)
  double get area => _height * _width;
}
