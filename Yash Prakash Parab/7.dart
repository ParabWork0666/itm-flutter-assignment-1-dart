void main() {
  String str1 = "Flutter Assignment";
  String str2 = "Flutter Assignment";
  String str3 = "Dart Assignment";

  print('str1: "$str1"');
  print('str2: "$str2"');
  print('str3: "$str3"\n');

  // Comparing using == operator
  print('--- Comparison using == operator ---');
  print('str1 == str2 : ${str1 == str2}'); // true
  print('str1 == str3 : ${str1 == str3}'); // false

  // Comparing using .compareTo() method
  // Returns:
  //  0 if strings are identical
  // <0 if str1 comes before argument lexicographically
  // >0 if str1 comes after argument lexicographically
  print('\n--- Comparison using .compareTo() method ---');
  print('str1.compareTo(str2) : ${str1.compareTo(str2)} (0 means identical)');
  print('str1.compareTo(str3) : ${str1.compareTo(str3)} (>0 means str1 is lexicographically greater)');
  print('str3.compareTo(str1) : ${str3.compareTo(str1)} (<0 means str3 is lexicographically smaller)');
}
