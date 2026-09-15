// Abstract base class with constructor
abstract class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  // Constructor in abstract class
  BankAccount(this.accountNumber, this.accountHolder, this.balance) {
    print('[Abstract Base Constructor]: Initializing account state for "$accountHolder" (No: $accountNumber).');
  }

  void displayBaseInfo() {
    print('  Account Number : $accountNumber');
    print('  Account Holder : $accountHolder');
    print('  Balance        : \$$balance');
  }

  // Abstract method
  void calculateInterest();
}

// Subclass SavingsAccount extending BankAccount
class SavingsAccount extends BankAccount {
  double interestRate;

  // Subclass constructor delegating to super constructor using : super(...)
  SavingsAccount(
    String accountNumber,
    String accountHolder,
    double balance,
    this.interestRate,
  ) : super(accountNumber, accountHolder, balance) {
    print('[Subclass Constructor]: SavingsAccount initialization complete.');
  }

  @override
  void calculateInterest() {
    double interest = balance * (interestRate / 100);
    print('  Annual Interest ($interestRate%) : \$$interest');
  }
}

void main() {
  print('--- Abstract Class Constructor Demonstration ---\n');

  print('1. Instantiating SavingsAccount object:');
  SavingsAccount account = SavingsAccount('SA-9901', 'Aadarsh Morey', 25000.0, 6.5);

  print('\n2. Account Information & Interest Calculation:');
  account.displayBaseInfo();
  account.calculateInterest();
}
