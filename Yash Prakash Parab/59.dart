class Rectangle {
  double length;
  double width;

  // Parameterized constructor
  Rectangle(this.length, this.width);

  // Method area() returns length * width
  double area() {
    return length * width;
  }

  // Method perimeter() returns 2 * (length + width)
  double perimeter() {
    return 2 * (length + width);
  }

  void displayDetails() {
    print('--- Rectangle Details ---');
    print('Length    : $length');
    print('Width     : $width');
    print('Area      : ${area()} sq units');
    print('Perimeter : ${perimeter()} units');
    print('-------------------------');
  }
}

void main() {
  print('--- Rectangle Class Demonstration ---\n');

  Rectangle rect1 = Rectangle(12.5, 6.0);
  Rectangle rect2 = Rectangle(8.0, 4.0);

  rect1.displayDetails();
  print('');
  rect2.displayDetails();
}
