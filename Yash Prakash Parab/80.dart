// Mixin Resizable providing resize capability
mixin Resizable {
  void resize(double factor) {
    print('[Resizable Mixin]: Resizing dimensions by a scaling factor of $factor');
  }
}

// Class Rectangle incorporating Resizable mixin with 'with' keyword
class Rectangle with Resizable {
  double length;
  double width;

  Rectangle(this.length, this.width);

  // Method to apply resizing to rectangle dimensions
  void applyResize(double factor) {
    resize(factor); // Invoking mixin method
    length *= factor;
    width *= factor;
  }

  void displayInfo() {
    print('  Length : $length');
    print('  Width  : $width');
    print('  Area   : ${length * width} sq units');
  }
}

void main() {
  print('--- Resizable Mixin Demonstration ---\n');

  Rectangle rect = Rectangle(10.0, 5.0);

  print('1. Initial Rectangle:');
  rect.displayInfo();

  print('\n2. Scaling Rectangle by factor of 2.0:');
  rect.applyResize(2.0);

  print('\n3. Resized Rectangle Details:');
  rect.displayInfo();
}
