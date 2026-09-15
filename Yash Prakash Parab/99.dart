// Marker Interface: An empty abstract class used as a type tag
abstract class Cacheable {}

// Class implementing the Cacheable marker interface
class UserSession implements Cacheable {
  String userId;
  String token;

  UserSession(this.userId, this.token);

  @override
  String toString() => 'UserSession(userId: $userId, token: $token)';
}

// Class NOT implementing the Cacheable marker interface
class SystemAuditLog {
  String message;

  SystemAuditLog(this.message);

  @override
  String toString() => 'SystemAuditLog(message: $message)';
}

// Function checking for marker interface tag at runtime
void handlePersistence(Object item) {
  if (item is Cacheable) {
    print('  [Cache Engine]: "$item" IS marked as Cacheable -> Saving to Redis Cache 💾');
  } else {
    print('  [Cache Engine]: "$item" IS NOT Cacheable -> Skipping cache storage 🚫');
  }
}

void main() {
  print('--- Marker Interface (Empty Abstract Class) Demonstration ---\n');

  UserSession session = UserSession('USR-8820', 'eyJhbGciOiJIUzI1Ni...123');
  SystemAuditLog audit = SystemAuditLog('Database connection pool refreshed');

  print('1. Testing UserSession instance:');
  handlePersistence(session);

  print('\n2. Testing SystemAuditLog instance:');
  handlePersistence(audit);
}
