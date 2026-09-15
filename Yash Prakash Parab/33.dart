class Counter {
  // Static variable shared across all instances
  static int count = 0;

  String name;

  // Constructor increments static count
  Counter(this.name) {
    count++;
    print('Created instance: $name');
  }

  // Static method to display the shared static count
  static void showCount() {
    print('Total objects created (Counter.count) = $count');
  }
}

void main() {
  print('--- Static Variable & Method Demonstration ---\n');

  // Initial count before instantiating any objects
  Counter.showCount();
  print('');

  // Instantiating objects to trigger constructor increments
  Counter('Object 1');
  Counter.showCount();

  Counter('Object 2');
  Counter.showCount();

  Counter('Object 3');
  Counter.showCount();
}
