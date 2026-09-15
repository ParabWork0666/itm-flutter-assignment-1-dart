import 'dart:io';

// Iterative implementation of Factorial
BigInt factorialIterative(int n) {
  if (n < 0) throw ArgumentError('Factorial is undefined for negative numbers.');
  BigInt result = BigInt.one;
  for (int i = 1; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

// Recursive implementation of Factorial
BigInt factorialRecursive(int n) {
  if (n < 0) throw ArgumentError('Factorial is undefined for negative numbers.');
  if (n <= 1) return BigInt.one;
  return BigInt.from(n) * factorialRecursive(n - 1);
}

void compareFactorials(int n) {
  print('--- Calculating $n! ---');

  Stopwatch swIterative = Stopwatch()..start();
  BigInt iterResult = factorialIterative(n);
  swIterative.stop();

  Stopwatch swRecursive = Stopwatch()..start();
  BigInt recResult = factorialRecursive(n);
  swRecursive.stop();

  print('1. Iterative Result : $iterResult');
  print('   Execution Time   : ${swIterative.elapsedMicroseconds} µs');

  print('2. Recursive Result : $recResult');
  print('   Execution Time   : ${swRecursive.elapsedMicroseconds} µs');

  print('   Results Match?   : ${iterResult == recResult}');
  print('-----------------------------------------');
}

void main() {
  stdout.write('Enter a non-negative integer n: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? n = int.tryParse(input.trim());
    if (n != null && n >= 0) {
      compareFactorials(n);
    } else {
      print('Invalid input: Please enter a non-negative integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [0, 1, 5, 10, 15];
    for (int n in testCases) {
      compareFactorials(n);
      print('');
    }
  }
}
