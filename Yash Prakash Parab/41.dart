import 'dart:io';

// Abstract base class Shape
abstract class Shape {
  void draw();
}

// Subclass Circle overriding draw()
class Circle extends Shape {
  @override
  void draw() {
    print('Circle: Drawing a smooth curved circle (◯)');
  }
}

// Subclass Rectangle overriding draw()
class Rectangle extends Shape {
  @override
  void draw() {
    print('Rectangle: Drawing a 4-sided polygon (▭)');
  }
}

// Subclass Triangle overriding draw()
class Triangle extends Shape {
  @override
  void draw() {
    print('Triangle: Drawing a 3-sided polygon (△)');
  }
}

void main() {
  print('--- Dynamic Method Dispatch Demonstration ---\n');

  // Creating a List of Shape references holding heterogeneous child objects
  List<Shape> shapeList = [
    Circle(),
    Rectangle(),
    Triangle(),
    Circle(),
  ];

  print('Iterating through List<Shape> and invoking draw():\n');

  for (int i = 0; i < shapeList.length; i++) {
    stdout.write('Item ${i + 1} (${shapeList[i].runtimeType}) -> ');
    // Dynamic Method Dispatch: Dart resolves the appropriate draw() at runtime
    shapeList[i].draw();
  }
}
