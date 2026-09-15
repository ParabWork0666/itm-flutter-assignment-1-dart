// Interface definition using an abstract class
abstract class Drawable {
  void draw();
}

// Class Circle implementing the Drawable interface
class Circle implements Drawable {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Circle (radius = $radius): Rendering circle ◯');
  }
}

// Class Square implementing the Drawable interface
class Square implements Drawable {
  double side;

  Square(this.side);

  @override
  void draw() {
    print('Square (side = $side): Rendering square ▢');
  }
}

void main() {
  print('--- Interface Implementation (Drawable) Demonstration ---\n');

  List<Drawable> items = [
    Circle(5.5),
    Square(4.0),
  ];

  print('Calling draw() on interface references:');
  for (Drawable item in items) {
    item.draw();
  }
}
