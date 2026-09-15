// Function with required positional parameter 'name' and optional positional parameters [age, country]
void printProfile(String name, [int? age, String country = 'India']) {
  print('  Name    : $name');
  print('  Age     : ${age != null ? "$age years old" : "Not specified"}');
  print('  Country : $country');
}

// Function with optional positional parameters [int a = 0, int b = 0, int c = 0]
int sumNumbers([int a = 0, int b = 0, int c = 0]) {
  print('  Inputs received -> a = $a, b = $b, c = $c');
  return a + b + c;
}

void main() {
  print('--- Optional Positional Parameters Demonstration ---\n');

  print('1. Calling printProfile with different numbers of arguments:');

  print('a) Required parameter only:');
  printProfile('Aadarsh');

  print('\nb) Required + 1 optional parameter:');
  printProfile('Aadarsh Morey', 20);

  print('\nc) All 3 positional parameters:');
  printProfile('Rohan Sharma', 25, 'Canada');

  print('\n----------------------------------------------------\n');

  print('2. Calling sumNumbers([int a = 0, int b = 0, int c = 0]):');

  print('a) Zero arguments:');
  int res0 = sumNumbers();
  print('   Total = $res0\n');

  print('b) One argument:');
  int res1 = sumNumbers(10);
  print('   Total = $res1\n');

  print('c) Two arguments:');
  int res2 = sumNumbers(10, 20);
  print('   Total = $res2\n');

  print('d) Three arguments:');
  int res3 = sumNumbers(10, 20, 30);
  print('   Total = $res3');
}
