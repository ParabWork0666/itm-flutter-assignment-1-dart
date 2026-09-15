import 'dart:io';

// Method 1: Finding LCM using a while loop directly
int findLcmWhile(int a, int b) {
  int maxVal = a > b ? a : b;
  int lcm = maxVal;

  while (true) {
    if (lcm % a == 0 && lcm % b == 0) {
      break;
    }
    lcm += maxVal;
  }

  return lcm;
}

// Method 2: Helper GCD using Euclidean while loop
int findGcdWhile(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

// Formula: LCM(a, b) = (a * b) / GCD(a, b)
int findLcmFormula(int a, int b) {
  if (a == 0 || b == 0) return 0;
  return (a * b).abs() ~/ findGcdWhile(a.abs(), b.abs());
}

void printLcmResult(int a, int b) {
  int lcmDirect = findLcmWhile(a.abs(), b.abs());
  int lcmFormula = findLcmFormula(a, b);
  print('LCM($a, $b) = $lcmDirect (Verified via formula: $lcmFormula)');
}

void main() {
  stdout.write('Enter two space-separated non-zero integers (a b): ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length == 2) {
      int? a = int.tryParse(parts[0]);
      int? b = int.tryParse(parts[1]);

      if (a != null && b != null && a != 0 && b != 0) {
        printLcmResult(a, b);
      } else {
        print('Invalid input: Please enter valid non-zero integers.');
      }
    } else {
      print('Please enter exactly two integers.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<List<int>> testCases = [
      [12, 18],
      [15, 25],
      [7, 9],
      [24, 36],
      [8, 14]
    ];

    for (List<int> pair in testCases) {
      printLcmResult(pair[0], pair[1]);
    }
  }
}
