import 'dart:io';

// Function to print Pascal's Triangle using nested loops
void printPascalsTriangle(int numRows) {
  print('\n--- Pascal\'s Triangle ($numRows rows) ---');

  for (int i = 0; i < numRows; i++) {
    String rowOutput = '';

    // Nested loop 1: Add leading spaces for centered triangular alignment
    for (int s = 0; s < numRows - i - 1; s++) {
      rowOutput += ' ';
    }

    // Nested loop 2: Compute combinations C(i, j) = C(i, j-1) * (i - j + 1) / j
    int val = 1;
    for (int j = 0; j <= i; j++) {
      rowOutput += '$val ';
      val = val * (i - j) ~/ (j + 1);
    }

    print(rowOutput.trimRight());
  }
}

void main() {
  stdout.write('Enter number of rows for Pascal\'s Triangle: ');
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

  printPascalsTriangle(rows);
}
