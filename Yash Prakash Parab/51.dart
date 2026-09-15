import 'dart:io';

void swapXOR(int a, int b) {
  print('--- Before Swap ---');
  print('a = $a (Binary: ${a.toRadixString(2).padLeft(8, '0')})');
  print('b = $b (Binary: ${b.toRadixString(2).padLeft(8, '0')})');

  // Swapping using bitwise XOR operator (^) without temporary variable
  a = a ^ b;
  b = a ^ b;
  a = a ^ b;

  print('\n--- After Swap (Bitwise XOR) ---');
  print('a = $a (Binary: ${a.toRadixString(2).padLeft(8, '0')})');
  print('b = $b (Binary: ${b.toRadixString(2).padLeft(8, '0')})');
}

void main() {
  stdout.write('Enter two space-separated integers (a b): ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length == 2) {
      int? a = int.tryParse(parts[0]);
      int? b = int.tryParse(parts[1]);

      if (a != null && b != null) {
        swapXOR(a, b);
      } else {
        print('Invalid input: Please enter valid integers.');
      }
    } else {
      print('Please enter exactly two integers.');
    }
  } else {
    print('No input provided via stdin. Running test case:\n');
    swapXOR(15, 27);
  }
}
