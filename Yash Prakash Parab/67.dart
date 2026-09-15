// Mixin containing concrete instance methods and static members
mixin Utilities {
  // Static constant in mixin
  static const String systemVersion = 'v3.1.4';

  // Static utility method in mixin
  static void displaySystemInfo() {
    print('[Mixin Static Method] System Version: $systemVersion');
  }

  // Concrete instance method (default behavior)
  void logActivity(String action) {
    print('[Mixin Concrete Method] Activity Logged -> $action');
  }
}

// Class using the Utilities mixin
class ApplicationDashboard with Utilities {
  void open() {
    print('Opening Application Dashboard...');
    // Invoking inherited concrete mixin method
    logActivity('Opened Dashboard View');
  }
}

void main() {
  print('--- Mixin Concrete & Static Behavior Demonstration ---\n');

  // Calling static method directly via Mixin name
  print('1. Static Behavior via Mixin:');
  Utilities.displaySystemInfo();

  print('\n2. Default Concrete Behavior on Class Instance:');
  ApplicationDashboard dashboard = ApplicationDashboard();
  dashboard.open();
}
