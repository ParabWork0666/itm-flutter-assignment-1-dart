// Abstract base class PaymentGateway
abstract class PaymentGateway {
  String gatewayName;

  PaymentGateway(this.gatewayName);

  // 1. Concrete (Non-Abstract) Method: Shared logic for all payment gateways
  void printReceipt(String transactionId, double amount) {
    print('  [Receipt - $gatewayName Gateway]');
    print('  Txn ID : $transactionId');
    print('  Amount : \$$amount');
    print('  Status : COMPLETED');
    print('  -----------------------------------');
  }

  // 2. Abstract Method: Must be implemented by concrete payment subclasses
  bool processPayment(double amount);
}

// Concrete subclass 1
class CreditCardPayment extends PaymentGateway {
  String cardNumber;

  CreditCardPayment(this.cardNumber) : super('Credit Card');

  @override
  bool processPayment(double amount) {
    print('  Processing \$$amount via Credit Card (${cardNumber.substring(cardNumber.length - 4)})...');
    printReceipt('TXN_CC_9081', amount);
    return true;
  }
}

// Concrete subclass 2
class UPIPayment extends PaymentGateway {
  String upiId;

  UPIPayment(this.upiId) : super('UPI');

  @override
  bool processPayment(double amount) {
    print('  Processing \$$amount via UPI ($upiId)...');
    printReceipt('TXN_UPI_4412', amount);
    return true;
  }
}

void main() {
  print('--- Abstract Class (Abstract & Concrete Methods) Demonstration ---\n');

  print('1. Processing via Credit Card Payment Gateway:');
  PaymentGateway p1 = CreditCardPayment('1234567890128842');
  p1.processPayment(250.0);

  print('\n2. Processing via UPI Payment Gateway:');
  PaymentGateway p2 = UPIPayment('user@okicici');
  p2.processPayment(49.99);
}
