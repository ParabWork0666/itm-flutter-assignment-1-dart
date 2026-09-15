import 'dart:io';

// Function reverseString(String s) using split(''), reversed, and join('')
String reverseString(String s) {
  return s.split('').reversed.join('');
}

void printReversedString(String str) {
  String reversed = reverseString(str);
  print('Original String : "$str"');
  print('Reversed String : "$reversed"');
}

void main() {
  stdout.write('Enter a string: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    printReversedString(input);
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<String> testCases = ['Flutter', 'Dart Programming', 'radar', '12345'];
    for (String s in testCases) {
      printReversedString(s);
      print('');
    }
  }
}
