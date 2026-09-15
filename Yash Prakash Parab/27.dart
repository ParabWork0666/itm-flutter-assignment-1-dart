import 'dart:io';

// Function sumOfDigits(int num) returns the sum of all digits
int sumOfDigits(int num) {
  int temp = num.abs();
  int sum = 0;

  if (temp == 0) {
    return 0;
  }

  while (temp > 0) {
    sum += temp % 10;
    temp ~/= 10;
  }

  return sum;
}

void printSumOfDigitsResult(int number) {
  int sum = sumOfDigits(number);
  print('Number: $number -> Sum of Digits: $sum');
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      printSumOfDigitsResult(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [1234, 9876, 5, 0, -456];
    for (int n in testCases) {
      printSumOfDigitsResult(n);
    }
  }
}
