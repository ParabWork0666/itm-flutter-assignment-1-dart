import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  bool prime = true;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      prime = false;
      break;
    }
  }

  return prime;
}

void checkAndPrintPrime(int n) {
  if (isPrime(n)) {
    print('$n is Prime');
  } else {
    print('$n is Not prime');
  }
}

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? n = int.tryParse(input.trim());
    if (n != null) {
      checkAndPrintPrime(n);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [1, 2, 3, 4, 17, 25, 29];
    for (int n in testCases) {
      checkAndPrintPrime(n);
    }
  }
}
