import 'dart:io';

int computeSum(int n) {
  int sum = 0;
  int i = 1;
  while (i <= n) {
    sum += i;
    i++;
  }
  return sum;
}

void main() {
  stdout.write('Enter a positive integer n: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? n = int.tryParse(input.trim());
    if (n != null && n > 0) {
      int sum = computeSum(n);
      print('Sum of first $n natural numbers (1 to $n) = $sum');
    } else {
      print('Invalid input: Please enter a positive integer greater than 0.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [5, 10, 50, 100];
    for (int n in testCases) {
      int sum = computeSum(n);
      print('n = $n -> Sum = $sum');
    }
  }
}
