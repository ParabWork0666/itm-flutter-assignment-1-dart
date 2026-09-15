import 'dart:io';

// Function isPalindrome(String s) returns true if string reads the same forwards and backwards
bool isPalindrome(String s) {
  String sanitized = s.toLowerCase();
  String reversed = sanitized.split('').reversed.join('');
  return sanitized == reversed;
}

void printPalindromeResult(String str) {
  if (isPalindrome(str)) {
    print('"$str" IS a Palindrome');
  } else {
    print('"$str" IS NOT a Palindrome');
  }
}

void main() {
  stdout.write('Enter a string: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    printPalindromeResult(input);
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<String> testCases = ['madam', 'racecar', 'Radar', 'Flutter', 'noon', '12321'];
    for (String str in testCases) {
      printPalindromeResult(str);
    }
  }
}
