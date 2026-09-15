import 'dart:io';

void checkNumber(int number) {
  if (number > 0) {
    print('$number is Positive');
  } else if (number < 0) {
    print('$number is Negative');
  } else {
    print('$number is Zero');
  }
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      checkNumber(number);
    } else {
      print('Invalid input. Please enter a valid integer.');
    }
  } else {
    print('\nNo input provided via stdin. Running test cases:\n');
    List<int> testNumbers = [15, -7, 0];
    for (int num in testNumbers) {
      checkNumber(num);
    }
  }
}
