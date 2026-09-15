import 'dart:io';

// Function using a do-while loop to count digits of an integer
int countDigits(int number) {
  int temp = number.abs();
  int count = 0;

  do {
    count++;
    temp ~/= 10;
  } while (temp > 0);

  return count;
}

void printDigitCountResult(int number) {
  int count = countDigits(number);
  print('Number: $number -> Total Digits: $count');
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      printDigitCountResult(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [0, 5, 42, 12345, 987654321, -809];
    for (int num in testCases) {
      printDigitCountResult(num);
    }
  }
}
