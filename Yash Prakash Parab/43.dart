// Function with named parameters {required int a, required int b, int c = 0}
int addNumbers({required int a, required int b, int c = 0}) {
  print('  Received named parameters -> a: $a, b: $b, c: $c');
  return a + b + c;
}

// Function displaying user info using named parameters
void printUserInfo({
  required String name,
  required int age,
  String country = 'India',
  String? occupation,
}) {
  print('  Name       : $name');
  print('  Age        : $age');
  print('  Country    : $country');
  print('  Occupation : ${occupation ?? "Not specified"}');
}

void main() {
  print('--- Named Parameters Demonstration in Dart ---\n');

  print('1. Calling addNumbers using named arguments (order can be arbitrary):');
  int sum1 = addNumbers(a: 15, b: 25);
  print('   Result = $sum1\n');

  print('2. Calling addNumbers with optional named argument (c: 50):');
  int sum2 = addNumbers(b: 30, a: 10, c: 50);
  print('   Result = $sum2\n');

  print('3. Calling printUserInfo with named arguments:');
  printUserInfo(age: 20, name: 'Aadarsh Morey');
  print('');

  print('4. Calling printUserInfo with all named arguments:');
  printUserInfo(
    name: 'Rohan Sharma',
    age: 25,
    country: 'USA',
    occupation: 'Software Developer',
  );
}
