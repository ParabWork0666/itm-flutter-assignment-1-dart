// Function with default positional parameter values
void greetUser(String name, [String greeting = 'Hello', String punctuation = '!']) {
  print('  $greeting, $name$punctuation');
}

// Function with default named parameter values
void calculateTotalCost({double price = 100.0, double taxRate = 0.05, int quantity = 1}) {
  double subtotal = price * quantity;
  double tax = subtotal * taxRate;
  double total = subtotal + tax;

  print('  Price: \$${price.toStringAsFixed(2)}, Tax Rate: ${(taxRate * 100).toStringAsFixed(0)}%, Quantity: $quantity');
  print('  Total Cost: \$${total.toStringAsFixed(2)}');
}

void main() {
  print('--- Function Default Values Demonstration ---\n');

  print('1. Positional Default Parameters:');
  print('a) Passing required argument only:');
  greetUser('Aadarsh');

  print('\nb) Overriding second parameter:');
  greetUser('Aadarsh', 'Good morning');

  print('\nc) Overriding all optional parameters:');
  greetUser('Aadarsh', 'Welcome', '!!!');

  print('\n---------------------------------------------\n');

  print('2. Named Default Parameters:');
  print('a) Passing no arguments (using all defaults):');
  calculateTotalCost();

  print('\nb) Overriding quantity only:');
  calculateTotalCost(quantity: 3);

  print('\nc) Overriding price and tax rate:');
  calculateTotalCost(price: 250.0, taxRate: 0.10, quantity: 2);
}
