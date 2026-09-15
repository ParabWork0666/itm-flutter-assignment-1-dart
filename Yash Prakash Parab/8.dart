void main() {
  double celsius = 37.0;
  
  // Formula: (C * 9 / 5) + 32
  double fahrenheit = (celsius * 9 / 5) + 32;

  print('--- Celsius to Fahrenheit Conversion ---');
  print('Temperature in Celsius   : ${celsius.toStringAsFixed(1)}°C');
  print('Temperature in Fahrenheit: ${fahrenheit.toStringAsFixed(1)}°F');
}
