// Mixin providing default reusable logging behavior
mixin Logger {
  void log(String message) {
    print('[LOG]: $message');
  }

  void info(String message) {
    print('[INFO]: $message');
  }
}

// Class UserService incorporating Logger mixin using 'with' keyword
class UserService with Logger {
  void createUser(String username) {
    // Calling default methods provided by Logger mixin
    log('Initiating user registration for: $username');
    info('User "$username" has been successfully registered.');
  }
}

// Another class using the same Logger mixin
class OrderService with Logger {
  void processOrder(int orderId) {
    log('Processing order #$orderId');
  }
}

void main() {
  print('--- Mixin with Default Method Demonstration ---\n');

  UserService userService = UserService();
  userService.createUser('Aadarsh Morey');

  print('');

  OrderService orderService = OrderService();
  orderService.processOrder(5001);
}
