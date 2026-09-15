import 'dart:io';

// Function isPerfect(int n) returns true if the sum of proper divisors equals n
bool isPerfect(int n) {
  if (n <= 1) return false;

  int sumOfDivisors = 1; // 1 is always a proper divisor for n > 1
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      sumOfDivisors += i;
      int complementary = n ~/ i;
      if (complementary != i) {
        sumOfDivisors += complementary;
      }
    }
  }

  return sumOfDivisors == n;
}

void checkAndPrintPerfect(int number) {
  if (isPerfect(number)) {
    print('$number IS a Perfect Number');
  } else {
    print('$number IS NOT a Perfect Number');
  }
}

void main() {
  stdout.write('Enter a positive integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      checkAndPrintPerfect(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [6, 28, 12, 496, 8128, 100];
    for (int num in testCases) {
      checkAndPrintPerfect(num);
    }
  }
}
