import 'dart:io';

// Function isPalindrome(int num) returns bool indicating if num is palindrome
bool isPalindrome(int num) {
  if (num < 0) {
    return false; // Negative numbers are not palindromes due to the leading '-'
  }

  int original = num;
  int reversed = 0;
  int temp = num;

  while (temp > 0) {
    int remainder = temp % 10;
    reversed = (reversed * 10) + remainder;
    temp ~/= 10;
  }

  return original == reversed;
}

void checkAndPrintPalindrome(int number) {
  if (isPalindrome(number)) {
    print('$number is a Palindrome');
  } else {
    print('$number is NOT a Palindrome');
  }
}

void main() {
  stdout.write('Enter an integer: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? number = int.tryParse(input.trim());
    if (number != null) {
      checkAndPrintPalindrome(number);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<int> testCases = [121, 12321, 1234, 7, -121, 1001];
    for (int num in testCases) {
      checkAndPrintPalindrome(num);
    }
  }
}
