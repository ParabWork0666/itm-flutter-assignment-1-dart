// Mixin containing static utility methods
mixin StringUtils {
  // Static method: Capitalizes first letter of string
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  // Static method: Checks if string is a palindrome
  static bool isPalindrome(String text) {
    String clean = text.toLowerCase();
    return clean == clean.split('').reversed.join('');
  }
}

// Class using StringUtils mixin
class TextFormatter with StringUtils {
  void process(String input) {
    // Accessing static method directly via Mixin identifier
    String formatted = StringUtils.capitalize(input);
    print('Formatted Text: "$formatted"');
  }
}

void main() {
  print('--- Mixin with Static Method Demonstration ---\n');

  // 1. Invoking static methods directly using Mixin name
  print('Direct Mixin Static Calls:');
  String capitalized = StringUtils.capitalize('flutter assignment');
  print('  StringUtils.capitalize("flutter assignment") -> "$capitalized"');

  bool isPal = StringUtils.isPalindrome('madam');
  print('  StringUtils.isPalindrome("madam") -> $isPal');

  print('\n2. Accessing static mixin methods inside a class context:');
  TextFormatter formatter = TextFormatter();
  formatter.process('hello world');
}
