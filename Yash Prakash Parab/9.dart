void main() {
  // Constant definition using final
  final double pi = 3.14159;

  // 1. Circle calculation (Area = π * r²)
  double radius = 7.0;
  double circleArea = pi * radius * radius;

  // 2. Rectangle calculation (Area = length * width)
  double length = 10.0;
  double width = 5.0;
  double rectangleArea = length * width;

  // 3. Triangle calculation (Area = 0.5 * base * height)
  double base = 8.0;
  double height = 6.0;
  double triangleArea = 0.5 * base * height;

  print('=== Area of Shapes ===');
  print('Circle (radius = $radius)                 : ${circleArea.toStringAsFixed(2)}');
  print('Rectangle (length = $length, width = $width) : ${rectangleArea.toStringAsFixed(2)}');
  print('Triangle (base = $base, height = $height)     : ${triangleArea.toStringAsFixed(2)}');
}
