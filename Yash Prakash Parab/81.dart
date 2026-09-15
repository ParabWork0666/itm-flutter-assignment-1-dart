import 'dart:io';

// Function isAnagram(String str1, String str2) returns true if two strings are anagrams
bool isAnagram(String str1, String str2) {
  // Normalize strings by converting to lowercase and stripping non-alphanumeric characters
  String s1 = str1.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  String s2 = str2.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  if (s1.length != s2.length) return false;

  List<String> chars1 = s1.split('')..sort();
  List<String> chars2 = s2.split('')..sort();

  return chars1.join('') == chars2.join('');
}

void printAnagramResult(String str1, String str2) {
  if (isAnagram(str1, str2)) {
    print('"$str1" and "$str2" ARE Anagrams');
  } else {
    print('"$str1" and "$str2" ARE NOT Anagrams');
  }
}

void main() {
  stdout.write('Enter two space-separated strings: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length >= 2) {
      printAnagramResult(parts[0], parts[1]);
    } else {
      print('Please enter two words.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<List<String>> testCases = [
      ['listen', 'silent'],
      ['triangle', 'integral'],
      ['apple', 'pale'],
      ['Dormitory', 'Dirty room'],
      ['hello', 'world']
    ];

    for (List<String> pair in testCases) {
      printAnagramResult(pair[0], pair[1]);
    }
  }
}
