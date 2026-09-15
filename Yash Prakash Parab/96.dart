// 1. Function combining Required Positional Parameters with Named Parameters ({...})
void processOrder(String item, int quantity, {double discount = 0.0, String shipping = 'Standard'}) {
  double basePrice = 50.0;
  double totalPrice = (basePrice * quantity) - discount;

  print('--- Order Summary ---');
  print('  Item       : $item');
  print('  Quantity   : $quantity');
  print('  Discount   : \$$discount');
  print('  Shipping   : $shipping');
  print('  Total Cost : \$$totalPrice');
  print('---------------------');
}

// 2. Function combining Required Positional Parameters with Optional Positional Parameters ([...])
void logEvent(String message, [String severity = 'INFO', String component = 'Core']) {
  print('  [$severity] [$component]: $message');
}

void main() {
  print('--- Positional & Named / Optional Parameter Combinations Demonstration ---\n');

  print('1. Calling processOrder (Required Positional + Named Parameters):');

  print('a) Passing required positional arguments only:');
  processOrder('Laptop', 2);

  print('\nb) Passing required positional + selected named arguments:');
  processOrder('Smartphone', 1, discount: 25.0, shipping: 'Express');

  print('\n-----------------------------------------------------------------------\n');

  print('2. Calling logEvent (Required Positional + Optional Positional Parameters):');

  print('a) Required argument only:');
  logEvent('System booted successfully.');

  print('\nb) Required + all optional positional arguments:');
  logEvent('Database connection timed out.', 'ERROR', 'DatabaseService');

  print('\n-----------------------------------------------------------------------\n');

  print('Dart Parameter Rule Note:');
  print('- A Dart function CANNOT combine both [...] and {...} in the same parameter list.');
  print('- A parameter list allows Positional + Named OR Positional + Optional Positional.');
}
