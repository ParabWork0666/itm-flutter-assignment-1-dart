import 'dart:io';

// Pattern 1: Right-Angled Triangle Pattern using nested loops
void printRightAngledTriangle(int rows) {
  print('\n--- Right-Angled Triangle Pattern ($rows rows) ---');
  for (int i = 1; i <= rows; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      line += '* ';
    }
    print(line);
  }
}

// Pattern 2: Full Pyramid Pattern using nested loops
void printPyramidPattern(int rows) {
  print('\n--- Full Pyramid Pattern ($rows rows) ---');
  for (int i = 1; i <= rows; i++) {
    String line = '';
    // Nested loop for leading spaces
    for (int j = 1; j <= rows - i; j++) {
      line += ' ';
    }
    // Nested loop for stars
    for (int k = 1; k <= i; k++) {
      line += '* ';
    }
    print(line);
  }
}

void main() {
  stdout.write('Enter number of rows: ');
  String? input = stdin.readLineSync();

  int rows = 5; // Default rows
  if (input != null && input.trim().isNotEmpty) {
    int? parsed = int.tryParse(input.trim());
    if (parsed != null && parsed > 0) {
      rows = parsed;
    } else {
      print('Invalid input. Using default 5 rows.');
    }
  }

  printRightAngledTriangle(rows);
  printPyramidPattern(rows);
}
