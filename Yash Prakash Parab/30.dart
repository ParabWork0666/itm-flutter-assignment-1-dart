class Rectangle {
  double width;
  double height;

  // 1. Default Constructor (sets default values)
  Rectangle()
      : width = 1.0,
        height = 1.0;

  // 2. Named Parameterized Constructor (Constructor Overloading in Dart)
  Rectangle.withDimensions(this.width, this.height);

  // 3. Named Constructor for a Square
  Rectangle.square(double size)
      : width = size,
        height = size;

  double getArea() {
    return width * height;
  }

  void display() {
    print('Width : $width, Height : $height -> Area : ${getArea()}');
  }
}

void main() {
  print('--- Constructor Overloading in Dart ---\n');

  // Using Default Constructor
  print('1. Using Default Constructor:');
  Rectangle rect1 = Rectangle();
  rect1.display();

  // Using Named Parameterized Constructor
  print('\n2. Using Parameterized Constructor (Rectangle.withDimensions):');
  Rectangle rect2 = Rectangle.withDimensions(5.0, 10.0);
  rect2.display();

  // Using Named Square Constructor
  print('\n3. Using Named Square Constructor (Rectangle.square):');
  Rectangle rect3 = Rectangle.square(4.0);
  rect3.display();
}
