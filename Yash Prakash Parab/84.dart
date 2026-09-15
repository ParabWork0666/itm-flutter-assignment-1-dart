class Transaction {
  // Final variables: Immutability guaranteed once assigned
  final String transactionId;
  final String senderAccount;
  final double amount;

  // Constructor initializing final fields
  Transaction(this.transactionId, this.senderAccount, this.amount);

  // Method displaying transaction details
  void displayTransaction() {
    print('  Transaction ID : $transactionId');
    print('  Sender Account : $senderAccount');
    print('  Amount         : \$${amount.toStringAsFixed(2)}');
  }
}

void main() {
  print('--- Final Fields & Immutability Demonstration ---\n');

  final tx = Transaction('TXN-984021', 'ACC-55012394', 2500.75);
  tx.displayTransaction();

  print('\nDemonstrating Final Field Restrictions:');
  print('- Final fields guarantee immutability after object creation.');
  print('- Attempting "tx.amount = 5000.0" triggers compile-time error:');
  print('  "Error: The final variable \'amount\' can only be set once."');
}
