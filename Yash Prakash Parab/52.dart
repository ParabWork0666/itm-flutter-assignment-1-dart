import 'dart:io';

void checkDivisibilityBy5And11(int number) {
  if (number % 5 == 0 && number % 11 == 0) {
    print('$number IS divisible by both 5 and 11.');
  } else {
    print('$number IS NOT divisible by both 5 and 11.');
  }
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      checkDivisibilityBy5And11(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [55, 110, 50, 22, 0, 550];
    for (int num in testCases) {
      checkDivisibilityBy5And11(num);
    }
  }
}
