import 'dart:io';

void printFibonacci(int n) {
  if (n <= 0) {
    print('Please enter a positive number of terms (n > 0).');
    return;
  }

  List<int> terms = [];
  int first = 0, second = 1;

  for (int i = 1; i <= n; i++) {
    terms.add(first);
    int next = first + second;
    first = second;
    second = next;
  }

  print('Fibonacci series ($n terms): ${terms.join(', ')}');
}

void main() {
  stdout.write('Enter number of terms (n): ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? n = int.tryParse(input.trim());
    if (n != null) {
      printFibonacci(n);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [1, 2, 5, 8, 10];
    for (int n in testCases) {
      printFibonacci(n);
    }
  }
}
