class Point {
  int x;
  int y;

  // Standard parameterized constructor
  Point(this.x, this.y);

  // 1. Named Copy Constructor
  Point.copy(Point other)
      : x = other.x,
        y = other.y;

  // 2. Factory Copy Constructor
  factory Point.from(Point other) {
    return Point(other.x, other.y);
  }

  void display(String label) {
    print('$label -> Point($x, $y)');
  }
}

void main() {
  print('--- Copy Constructor & Factory Constructor Demonstration ---\n');

  // Original Point object
  Point p1 = Point(10, 20);
  p1.display('Original Point p1');

  // Creating copy using Named Copy Constructor
  Point p2 = Point.copy(p1);
  p2.display('Copied Point p2 (via Point.copy)');

  // Creating copy using Factory Copy Constructor
  Point p3 = Point.from(p1);
  p3.display('Copied Point p3 (via Point.from factory)');

  print('\nMutating original object p1 coordinates to (99, 88)...');
  p1.x = 99;
  p1.y = 88;

  print('\nVerifying independence of copied objects:');
  p1.display('Original p1');
  p2.display('Copied p2 (unaffected)');
  p3.display('Copied p3 (unaffected)');
}
