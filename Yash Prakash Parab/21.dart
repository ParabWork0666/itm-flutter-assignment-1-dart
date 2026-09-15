import 'dart:io';

BigInt computeFactorial(int n) {
  if (n < 0) {
    throw ArgumentError('Factorial is not defined for negative numbers.');
  }

  BigInt result = BigInt.one;
  for (int i = 1; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

void printFactorialResult(int n) {
  if (n < 0) {
    print('Factorial ($n!) is undefined for negative numbers.');
  } else {
    BigInt fact = computeFactorial(n);
    print('$n! = $fact');
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
    List<int> testCases = [0, 1, 5, 10, 20];
    for (int n in testCases) {
      printFactorialResult(n);
    }
  }
}
