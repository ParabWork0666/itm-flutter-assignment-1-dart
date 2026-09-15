bool isLeapYear(int year) {
  
  return (year % 400 == 0) || ((year % 4 == 0) && !(year % 100 == 0));
}

void main() {
  List<int> testYears = [2024, 1900, 2000, 2026, 2004];

  print('--- Leap Year Check using Logical Operators (&&, ||, !) ---\n');

  for (int year in testYears) {
    if (isLeapYear(year)) {
      print('$year is a Leap Year');
    } else {
      print('$year is NOT a Leap Year');
    }
  }
}
