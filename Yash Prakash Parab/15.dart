import 'dart:io';

num findMaximumOfFour(num a, num b, num c, num d) {
  num max;

  if (a >= b) {
    if (a >= c) {
      if (a >= d) {
        max = a;
      } else {
        max = d;
      }
    } else {
      if (c >= d) {
        max = c;
      } else {
        max = d;
      }
    }
  } else {
    if (b >= c) {
      if (b >= d) {
        max = b;
      } else {
        max = d;
      }
    } else {
      if (c >= d) {
        max = c;
      } else {
        max = d;
      }
    }
  }

  return max;
}

void main() {
  stdout.write('Enter four space-separated numbers: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    List<String> parts = input.trim().split(RegExp(r'\s+'));
    if (parts.length == 4) {
      num? a = num.tryParse(parts[0]);
      num? b = num.tryParse(parts[1]);
      num? c = num.tryParse(parts[2]);
      num? d = num.tryParse(parts[3]);

      if (a != null && b != null && c != null && d != null) {
        num max = findMaximumOfFour(a, b, c, d);
        print('Numbers: $a, $b, $c, $d');
        print('Maximum number is: $max');
      } else {
        print('Invalid input: All 4 values must be valid numbers.');
      }
    } else {
      print('Please enter exactly 4 numbers separated by spaces.');
    }
  } else {
    print('No input provided via stdin. Running test cases:\n');
    List<List<num>> testCases = [
      [25, 42, 18, 99],
      [100, 50, 75, 20],
      [10, 85, 30, 40],
      [5, 15, 95, 20],
      [-10, -5, -20, -1]
    ];

    for (List<num> nums in testCases) {
      num max = findMaximumOfFour(nums[0], nums[1], nums[2], nums[3]);
      print('Numbers: ${nums[0]}, ${nums[1]}, ${nums[2]}, ${nums[3]} -> Maximum: $max');
    }
  }
}
