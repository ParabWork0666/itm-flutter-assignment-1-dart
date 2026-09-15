import 'dart:io';

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print('Day 1: Monday');
      break;
    case 2:
      print('Day 2: Tuesday');
      break;
    case 3:
      print('Day 3: Wednesday');
      break;
    case 4:
      print('Day 4: Thursday');
      break;
    case 5:
      print('Day 5: Friday');
      break;
    case 6:
      print('Day 6: Saturday');
      break;
    case 7:
      print('Day 7: Sunday');
      break;
    default:
      print('Invalid input ($day): Please enter a number between 1 and 7.');
  }
}

void main() {
  stdout.write('Enter a number (1-7): ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    int? day = int.tryParse(input.trim());
    if (day != null) {
      printDayOfWeek(day);
    } else {
      print('Invalid input: Please enter a valid integer.');
    }
  } else {
    print('\nNo input provided via stdin. Running test cases:\n');
    List<int> testCases = [1, 3, 5, 7, 9, 0];
    for (int day in testCases) {
      printDayOfWeek(day);
    }
  }
}
