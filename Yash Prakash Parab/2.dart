void main() {
  int a = 10;
  int b = 20;

  print('=== Initial Values ===');
  print('a = $a, b = $b');

  
  print('\n--- 1. Swap using a temporary variable ---');
  print('Before swap: a = $a, b = $b');
  int temp = a;
  a = b;
  b = temp;
  print('After swap : a = $a, b = $b');

  
  print('\n--- 2. Swap without temporary variable (Arithmetic) ---');
  print('Before swap: a = $a, b = $b');
  a = a + b; 
  b = a - b; 
  a = a - b; 
  print('After swap : a = $a, b = $b');

  
  print('\n--- 3. Swap without temporary variable (Bitwise XOR) ---');
  print('Before swap: a = $a, b = $b');
  a = a ^ b; 
  b = a ^ b; 
  a = a ^ b; 
  print('After swap : a = $a, b = $b');
}
