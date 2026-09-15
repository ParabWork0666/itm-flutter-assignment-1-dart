import 'dart:math';

class Circle {
  double radius;

  // Parameterized constructor
  Circle(this.radius);

  // Method area() returns pi * r^2
  double area() {
    return pi * radius * radius;
  }

  // Method circumference() returns 2 * pi * r
  double circumference() {
    return 2 * pi * radius;
  }

  void displayDetails() {
    print('--- Circle Details ---');
    print('Radius        : $radius');
    print('Area          : ${area().toStringAsFixed(2)} sq units');
    print('Circumference : ${circumference().toStringAsFixed(2)} units');
    print('----------------------');
  }
}

void main() {
  print('--- Circle Class Demonstration ---\n');

  Circle c1 = Circle(7.0);
  Circle c2 = Circle(3.5);

  c1.displayDetails();
  print('');
  c2.displayDetails();
}
