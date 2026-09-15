import 'dart:io';

// Function countVowels(String s) returns the count of vowels (a, e, i, o, u) case-insensitively
int countVowels(String s) {
  int count = 0;
  Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};

  for (int i = 0; i < s.length; i++) {
    if (vowels.contains(s[i].toLowerCase())) {
      count++;
    }
  }

  return count;
}

void printVowelCountResult(String text) {
  int count = countVowels(text);
  print('Text: "$text" -> Vowel Count: $count');
}

void main() {
  stdout.write('Enter a string: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    printVowelCountResult(input);
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<String> testCases = [
      'Hello World',
      'Flutter Development',
      'AEIOU aeiou',
      'Rhythm',
    ];
    for (String text in testCases) {
      printVowelCountResult(text);
    }
  }
}
