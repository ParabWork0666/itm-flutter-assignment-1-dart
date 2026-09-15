void main() {
  int a;

  print('=== Prefix vs Postfix Increment ===');
  a = 5;
  print('Initial value of a: $a');
  print('During prefix increment (++a) : ${++a}'); // Increments to 6, then prints 6
  print('After prefix increment, a     : $a');

  a = 5;
  print('\nInitial value of a: $a');
  print('During postfix increment (a++): ${a++}'); // Prints 5, then increments to 6
  print('After postfix increment, a    : $a');

  print('\n=== Prefix vs Postfix Decrement ===');
  a = 5;
  print('Initial value of a: $a');
  print('During prefix decrement (--a) : ${--a}'); // Decrements to 4, then prints 4
  print('After prefix decrement, a     : $a');

  a = 5;
  print('\nInitial value of a: $a');
  print('During postfix decrement (a--): ${a--}'); // Prints 5, then decrements to 4
  print('After postfix decrement, a    : $a');
}
