import 'dart:io';

// Function gcd(int a, int b) using Euclid's Algorithm (recursion)
int gcd(int a, int b) {
  a = a.abs();
  b = b.abs();
  if (b == 0) {
    return a;
  }
  return gcd(b, a % b);
}

void printGcdResult(int a, int b) {
  int result = gcd(a, b);
  print('GCD($a, $b) = $result');
}

void main() {
  stdout.write('Enter two space-separated integers: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length == 2) {
      int? a = int.tryParse(parts[0]);
      int? b = int.tryParse(parts[1]);

      if (a != null && b != null) {
        printGcdResult(a, b);
      } else {
        print('Invalid input: Please enter valid integers.');
      }
    } else {
      print('Please enter exactly two integers.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<List<int>> testCases = [
      [48, 18],
      [56, 98],
      [101, 10],
      [270, 192],
      [0, 25]
    ];

    for (List<int> pair in testCases) {
      printGcdResult(pair[0], pair[1]);
    }
  }
}
