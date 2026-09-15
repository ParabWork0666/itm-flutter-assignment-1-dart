import 'dart:io';

// Function to print Floyd's Triangle up to specified rows using nested loops
void printFloydsTriangle(int rows) {
  print('\n--- Floyd\'s Triangle ($rows rows) ---');
  int number = 1;

  for (int i = 1; i <= rows; i++) {
    String rowOutput = '';
    for (int j = 1; j <= i; j++) {
      rowOutput += '$number ';
      number++;
    }
    print(rowOutput.trimRight());
  }
}

void main() {
  stdout.write('Enter number of rows for Floyd\'s Triangle: ');
  String? input = stdin.readLineSync();

  int rows = 5; // Default rows
  if (input != null && input.trim().isNotEmpty) {
    int? parsed = int.tryParse(input.trim());
    if (parsed != null && parsed > 0) {
      rows = parsed;
    } else {
      print('Invalid input. Using default 5 rows.');
    }
  } else {
    print('No input provided via stdin. Using default 5 rows.');
  }

  printFloydsTriangle(rows);
}
