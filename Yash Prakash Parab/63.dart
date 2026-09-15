abstract class Shape {
  String name;

  Shape(this.name);

  void draw();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius) : super('Circle');

  @override
  void draw() {
    print('[$name] Drawing circle with radius = $radius ◯');
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width) : super('Rectangle');

  @override
  void draw() {
    print('[$name] Drawing rectangle with dimensions ${length}x$width ▭');
  }
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height) : super('Triangle');

  @override
  void draw() {
    print('[$name] Drawing triangle with base = $base, height = $height △');
  }
}

void main() {
  print('--- Polymorphic List of Shape References Demonstration ---\n');

  // List of Shape base references holding heterogeneous subclass instances
  List<Shape> shapes = [
    Circle(7.0),
    Rectangle(10.0, 5.0),
    Triangle(6.0, 8.0),
    Circle(3.5),
  ];

  print('Looping through List<Shape> and calling draw():\n');

  for (Shape s in shapes) {
    s.draw();
  }
}
