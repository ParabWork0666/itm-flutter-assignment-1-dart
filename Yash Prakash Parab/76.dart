class MathUtils {
  // Static const variable
  static const double pi = 3.141592653589793;

  // Static variable (lazily initialized upon first access in Dart)
  static int operationsCount = 0;

  // Static method: Calculates square of a number
  static double square(double num) {
    operationsCount++;
    return num * num;
  }

  // Static method: Calculates cube of a number
  static double cube(double num) {
    operationsCount++;
    return num * num * num;
  }

  // Static method: Displays operation statistics
  static void showStats() {
    print('[Static Method] Total Operations Performed (MathUtils.operationsCount) = $operationsCount');
  }
}

void main() {
  print('--- Static Variables & Methods Demonstration ---\n');

  // Accessing static constant directly via class name
  print('1. Accessing static constant MathUtils.pi: ${MathUtils.pi}');

  print('\n2. Calling static methods without creating class instances:');
  print('   MathUtils.square(5.0) = ${MathUtils.square(5.0)}');
  print('   MathUtils.cube(3.0)   = ${MathUtils.cube(3.0)}');
  print('   MathUtils.square(12.0) = ${MathUtils.square(12.0)}');

  print('\n3. Checking shared static state:');
  MathUtils.showStats();
}
