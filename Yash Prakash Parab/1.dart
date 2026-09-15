void main() {
  
  int age = 20;
  double pi = 3.14159;
  String name = "Aadarsh";
  bool isStudent = true;
  dynamic dynamicVar = "Initial String Value";

  print('--- Primitive & Dynamic Types ---');
  print('int: $age');
  print('double: $pi');
  print('String: $name');
  print('bool: $isStudent');
  print('dynamic (String): $dynamicVar');

  
  dynamicVar = 100;
  print('dynamic (reassigned to int): $dynamicVar');

  
  var inferredString = "Inferred String using var"; 
  var inferredInt = 42;                             
  final finalVal = "Constant value set once using final"; 

  print('\n--- Type Inference (var & final) ---');
  print('var (String): $inferredString (Type: ${inferredString.runtimeType})');
  print('var (int): $inferredInt (Type: ${inferredInt.runtimeType})');
  print('final: $finalVal (Type: ${finalVal.runtimeType})');
}
