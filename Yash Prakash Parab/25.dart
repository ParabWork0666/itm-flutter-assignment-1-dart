import 'dart:io';

// Recursive function to compute factorial (n!)
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Factorial is undefined for negative numbers.');
  }
  // Base case: 0! = 1 and 1! = 1
  if (n <= 1) {
    return 1;
  }
  // Recursive case: n! = n * (n - 1)!
  return n * factorial(n - 1);
}

void printFactorialResult(int n) {
  if (n < 0) {
    print('Factorial ($n!) is undefined for negative numbers.');
  } else {
    try {
      int result = factorial(n);
      print('factorial($n) -> $n! = $result');
    } catch (e) {
      print('Error: $e');
    }
  }
}

void main() {
  stdout.write('Enter a non-negative integer n: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? n = int.tryParse(input.trim());
    if (n != null) {
      printFactorialResult(n);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [0, 1, 5, 7, 10];
    for (int n in testCases) {
      printFactorialResult(n);
    }
  }
}
