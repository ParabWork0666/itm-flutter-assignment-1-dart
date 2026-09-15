class Box {
  double length;
  double breadth;
  double height;

  // Parameterized constructor
  Box(this.length, this.breadth, this.height);

  // Method volume() returns length * breadth * height
  double volume() {
    return length * breadth * height;
  }
}

void main() {
  Box myBox = Box(10.0, 5.5, 4.0);

  print('Box Dimensions:');
  print('Length  : ${myBox.length}');
  print('Breadth : ${myBox.breadth}');
  print('Height  : ${myBox.height}');
  print('-------------------');
  print('Volume  : ${myBox.volume()} cubic units');
}
