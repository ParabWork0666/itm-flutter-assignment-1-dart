// Function with 2 required parameters (a, b) and 1 optional positional parameter [c = 0]
int calculateSum(int a, int b, [int c = 0]) {
  print('  Received -> a = $a, b = $b, c = $c');
  return a + b + c;
}

// Function with 2 required parameters (a, b) and 1 optional named parameter {int c = 1}
int multiply(int a, int b, {int c = 1}) {
  print('  Received -> a = $a, b = $b, c = $c');
  return a * b * c;
}

void main() {
  print('--- Optional Parameters Demonstration ---\n');

  print('1. Optional Positional Parameter [int c = 0]:');
  // Calling WITHOUT optional parameter
  print('a) Call without optional param:');
  int sum1 = calculateSum(10, 20);
  print('   Result: 10 + 20 + 0 = $sum1\n');

  // Calling WITH optional parameter
  print('b) Call with optional param (c = 5):');
  int sum2 = calculateSum(10, 20, 5);
  print('   Result: 10 + 20 + 5 = $sum2\n');

  print('-----------------------------------------\n');

  print('2. Optional Named Parameter {int c = 1}:');
  // Calling WITHOUT optional named parameter
  print('a) Call without optional named param:');
  int prod1 = multiply(4, 5);
  print('   Result: 4 * 5 * 1 = $prod1\n');

  // Calling WITH optional named parameter
  print('b) Call with optional named param (c: 3):');
  int prod2 = multiply(4, 5, c: 3);
  print('   Result: 4 * 5 * 3 = $prod2');
}
