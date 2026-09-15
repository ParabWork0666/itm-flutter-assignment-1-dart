class UserAccount {
  final String _id;           // Read-only property (getter only)
  String _username;           // Read & Write property (getter and setter)
  String _passwordHash = '';  // Write-only property (setter only, no getter for security)

  UserAccount(this._id, this._username);

  // 1. READ-ONLY PROPERTY: Getter only (No setter)
  String get id => _id;

  // 2. READ & WRITE PROPERTY: Getter and Setter
  String get username => _username;
  set username(String newUsername) {
    if (newUsername.trim().isNotEmpty) {
      _username = newUsername.trim();
    } else {
      print('Error: Username cannot be empty.');
    }
  }

  // 3. WRITE-ONLY PROPERTY: Setter only (No getter)
  set password(String rawPassword) {
    if (rawPassword.length >= 6) {
      _passwordHash = 'HASHED_${rawPassword.split('').reversed.join('')}_SALT';
      print('[UserAccount]: Password has been set and hashed internally.');
    } else {
      print('Error: Password must be at least 6 characters long.');
    }
  }

  // Internal verification method
  bool verifyPassword(String inputPassword) {
    String testHash = 'HASHED_${inputPassword.split('').reversed.join('')}_SALT';
    return _passwordHash == testHash;
  }
}

void main() {
  print('--- Read-Only and Write-Only Encapsulation Demonstration ---\n');

  UserAccount user = UserAccount('USR-77210', 'aadarsh_m');

  print('1. Accessing READ-ONLY Property (id):');
  print('   User ID: ${user.id}');
  print('   Note: Attempting "user.id = \'NEW_ID\'" triggers a compile error (no setter).\n');

  print('2. Accessing READ & WRITE Property (username):');
  print('   Current Username : ${user.username}');
  user.username = 'aadarsh_morey';
  print('   Updated Username : ${user.username}\n');

  print('3. Accessing WRITE-ONLY Property (password):');
  user.password = 'mySecretPass123';
  print('   Note: Attempting "print(user.password)" triggers a compile error (no getter).\n');

  print('4. Internal Password Authentication Check:');
  print('   Attempting "wrongPass"    -> ${user.verifyPassword('wrongPass')}');
  print('   Attempting "mySecretPass123" -> ${user.verifyPassword('mySecretPass123')}');
}
