import 'dart:io';

void checkVowelOrConsonant(String char) {
  if (char.length != 1) {
    print("Invalid input ('$char'): Please enter a single character.");
    return;
  }

  switch (char) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'A':
    case 'E':
    case 'I':
    case 'O':
    case 'U':
      print("'$char' is a Vowel");
      break;
    default:
      if (RegExp(r'^[a-zA-Z]$').hasMatch(char)) {
        print("'$char' is a Consonant");
      } else {
        print("'$char' is not an alphabetic character");
      }
  }
}

void main() {
  stdout.write('Enter a single character: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    String char = input.trim();
    checkVowelOrConsonant(char);
  } else {
    print('\nNo input provided via stdin. Running test cases:\n');
    List<String> testChars = ['a', 'E', 'z', 'B', '5', 'ou'];
    for (String char in testChars) {
      checkVowelOrConsonant(char);
    }
  }
}
