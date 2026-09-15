import 'dart:io';

void printMultiplicationTable(int num) {
  print('--- Multiplication Table of $num ---');
  int i = 1;
  do {
    print('$num x $i = ${num * i}');
    i++;
  } while (i <= 10);
}

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      printMultiplicationTable(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test case for 5:\n');
    printMultiplicationTable(5);
  }
}
