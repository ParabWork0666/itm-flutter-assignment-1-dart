// Base class Shape
class Shape {
  void draw() {
    print('Drawing a generic shape.');
  }
}

// Subclass Circle overriding draw()
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a Circle: ◯');
  }
}

// Subclass Rectangle overriding draw()
class Rectangle extends Shape {
  @override
  void draw() {
    print('Drawing a Rectangle: ▭');
  }
}

void main() {
  print('--- Runtime Polymorphism Demonstration ---\n');

  // Declaring list of parent type references (Shape) holding child instances
  List<Shape> shapes = [
    Circle(),
    Rectangle(),
    Shape(),
  ];

  print('Calling draw() on Shape references (Dynamic Dispatch):\n');
  for (Shape shape in shapes) {
    // Runtime polymorphism decides which draw() implementation is called based on actual object type
    shape.draw();
  }
}
