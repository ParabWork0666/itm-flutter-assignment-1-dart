class DatabaseService {
  // 1. Private static instance initialized once
  static final DatabaseService _instance = DatabaseService._internal();

  // 2. Private named constructor preventing external direct instantiation
  DatabaseService._internal() {
    print('[Singleton]: Private constructor _internal() executed. Initializing connection pool.');
  }

  // 3. Factory constructor returning the single cached instance
  factory DatabaseService() {
    return _instance;
  }

  // 4. Static getter to access the singleton instance
  static DatabaseService get instance => _instance;

  void executeQuery(String sql) {
    print('[DB Query]: Executing "$sql" on singleton instance.');
  }
}

void main() {
  print('--- Singleton Pattern with Private Constructor Demonstration ---\n');

  print('1. Obtaining first reference (db1):');
  DatabaseService db1 = DatabaseService();
  db1.executeQuery('SELECT * FROM users');

  print('\n2. Obtaining second reference (db2 via DatabaseService.instance):');
  DatabaseService db2 = DatabaseService.instance;
  db2.executeQuery('SELECT * FROM products');

  print('\n3. Verifying Singleton Identity:');
  print('   db1 HashCode: ${identityHashCode(db1)}');
  print('   db2 HashCode: ${identityHashCode(db2)}');
  print('   identical(db1, db2)? -> ${identical(db1, db2)}');
}
