import 'dart:math';

// Helper function to check if a number is an Armstrong number
bool isArmstrong(int number) {
  if (number <= 0) return false;

  int numDigits = number.toString().length;
  int temp = number;
  int sum = 0;

  while (temp > 0) {
    int digit = temp % 10;
    sum += pow(digit, numDigits).toInt();
    temp ~/= 10;
  }

  return sum == number;
}

void main() {
  print('--- Armstrong Numbers between 1 and 1000 ---\n');
  List<int> armstrongNumbers = [];

  for (int i = 1; i <= 1000; i++) {
    if (isArmstrong(i)) {
      armstrongNumbers.add(i);
    }
  }

  print('Armstrong numbers found:');
  for (int num in armstrongNumbers) {
    print(num);
  }
}
