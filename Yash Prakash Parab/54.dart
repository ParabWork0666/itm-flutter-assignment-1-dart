import 'dart:io';

int reverseNumber(int number) {
  bool isNegative = number < 0;
  int temp = number.abs();
  int reversed = 0;

  while (temp > 0) {
    int digit = temp % 10;
    reversed = (reversed * 10) + digit;
    temp ~/= 10;
  }

  return isNegative ? -reversed : reversed;
}

void printReversedResult(int number) {
  int reversed = reverseNumber(number);
  print('Original Number : $number -> Reversed Number : $reversed');
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      printReversedResult(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [12345, 9870, 7, -456, 1000];
    for (int num in testCases) {
      printReversedResult(num);
    }
  }
}
