import 'dart:io';

// Function add(int a, int b) returning the sum of two integers
int add(int a, int b) {
  return a + b;
}

void main() {
  stdout.write('Enter two space-separated integers: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length == 2) {
      int? a = int.tryParse(parts[0]);
      int? b = int.tryParse(parts[1]);

      if (a != null && b != null) {
        int result = add(a, b);
        print('Sum of $a and $b is: $result');
      } else {
        print('Invalid input: Please enter valid integers.');
      }
    } else {
      print('Please enter exactly two integers.');
    }
  } else {
    print('No input provided via stdin. Running test case:\n');
    int num1 = 15;
    int num2 = 27;
    int result = add(num1, num2);
    print('$num1 + $num2 = $result');
  }
}
