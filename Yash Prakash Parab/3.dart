void main() {
  int num1 = 25;
  int num2 = 42;
  int num3 = 18;

  
  int largest = (num1 >= num2 && num1 >= num3)
      ? num1
      : (num2 >= num3 ? num2 : num3);

  print('Numbers: num1 = $num1, num2 = $num2, num3 = $num3');
  print('The largest number is: $largest');
}
