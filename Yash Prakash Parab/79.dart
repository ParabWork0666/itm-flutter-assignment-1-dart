import 'dart:math';

// Abstract base class Shape3D
abstract class Shape3D {
  String name;

  Shape3D(this.name);

  // Abstract method for surface area calculation
  double area();

  // Abstract method for 3D volume calculation
  double volume();

  void displayDetails() {
    print('--- $name Details ---');
    print('Surface Area : ${area().toStringAsFixed(2)} sq units');
    print('Volume       : ${volume().toStringAsFixed(2)} cubic units');
  }
}

// Concrete subclass Sphere extending Shape3D
class Sphere extends Shape3D {
  double radius;

  Sphere(this.radius) : super('Sphere');

  @override
  double area() => 4 * pi * radius * radius;

  @override
  double volume() => (4 / 3) * pi * pow(radius, 3);
}

// Concrete subclass Cube extending Shape3D
class Cube extends Shape3D {
  double side;

  Cube(this.side) : super('Cube');

  @override
  double area() => 6 * side * side;

  @override
  double volume() => pow(side, 3).toDouble();
}

void main() {
  print('--- Abstract Shape3D (Area & Volume) Demonstration ---\n');

  Shape3D sphere = Sphere(5.0);
  Shape3D cube = Cube(4.0);

  sphere.displayDetails();
  print('');
  cube.displayDetails();
}
