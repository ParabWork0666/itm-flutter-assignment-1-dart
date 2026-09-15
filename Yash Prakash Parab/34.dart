class BankAccount {
  // Private field (encapsulated in Dart using leading underscore)
  double _balance;

  // Constructor
  BankAccount([double initialBalance = 0.0])
      : _balance = initialBalance >= 0 ? initialBalance : 0.0;

  // Getter method getBalance()
  double getBalance() {
    return _balance;
  }

  // Setter method setBalance(double) with validation (no negative balance allowed)
  void setBalance(double amount) {
    if (amount >= 0) {
      _balance = amount;
      print('Balance successfully updated to: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Error: Balance cannot be set to a negative value (\$${amount.toStringAsFixed(2)}). Operation rejected.');
    }
  }
}

void main() {
  print('--- BankAccount Encapsulation Demonstration ---\n');

  BankAccount account = BankAccount(1000.0);
  print('Initial Balance: \$${account.getBalance().toStringAsFixed(2)}');

  print('\nAttempt 1: Updating balance to \$1500.50');
  account.setBalance(1500.50);

  print('\nAttempt 2: Setting balance to a negative value (-\$500.00)');
  account.setBalance(-500.0);

  print('\nFinal Account Balance: \$${account.getBalance().toStringAsFixed(2)}');
}
