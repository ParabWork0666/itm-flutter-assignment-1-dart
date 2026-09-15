import 'dart:io';

String calculateGrade(num marks) {
  if (marks < 0 || marks > 100) {
    return 'Invalid (Marks should be between 0 and 100)';
  } else if (marks >= 90) {
    return 'A';
  } else if (marks >= 75) {
    return 'B';
  } else if (marks >= 60) {
    return 'C';
  } else if (marks >= 45) {
    return 'D';
  } else {
    return 'F';
  }
}

void printGradeResult(num marks) {
  String grade = calculateGrade(marks);
  print('Marks: $marks -> Grade: $grade');
}

void main() {
  stdout.write('Enter marks (0-100): ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    num? marks = num.tryParse(input.trim());
    if (marks != null) {
      printGradeResult(marks);
    } else {
      print('Invalid input: Please enter a valid numerical score.');
    }
  } else {
    print('\nNo input provided via stdin. Running test cases:\n');
    List<num> testMarks = [95, 82, 68, 52, 38, 105, -5];
    for (num marks in testMarks) {
      printGradeResult(marks);
    }
  }
}
