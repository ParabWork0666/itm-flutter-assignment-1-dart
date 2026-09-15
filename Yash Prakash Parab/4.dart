void checkEvenOrOdd(int number) {
  
  if ((number & 1) == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }
}

void main() {
  int num1 = 14;
  int num2 = 27;

  print('--- Checking Even / Odd using Bitwise AND (&) ---');
  checkEvenOrOdd(num1);
  checkEvenOrOdd(num2);
}
