class UserProfile {
  String _name;
  int _age;
  double _score;

  // Constructor using setters for initial validation
  UserProfile(String name, int age, double score)
      : _name = 'Unknown',
        _age = 0,
        _score = 0.0 {
    this.name = name;
    this.age = age;
    this.score = score;
  }

  // Getter & Setter for _name
  String get name => _name;
  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value.trim();
    } else {
      print('Error: Name cannot be blank. Update rejected.');
    }
  }

  // Getter & Setter for _age with validation (0 to 120)
  int get age => _age;
  set age(int value) {
    if (value >= 0 && value <= 120) {
      _age = value;
    } else {
      print('Error: Invalid age ($value). Age must be between 0 and 120. Update rejected.');
    }
  }

  // Getter & Setter for _score with validation (0.0 to 100.0)
  double get score => _score;
  set score(double value) {
    if (value >= 0.0 && value <= 100.0) {
      _score = value;
    } else {
      print('Error: Invalid score ($value). Score must be between 0.0 and 100.0. Update rejected.');
    }
  }

  void displayProfile() {
    print('--- User Profile ---');
    print('Name  : $_name');
    print('Age   : $_age');
    print('Score : ${_score.toStringAsFixed(1)}');
    print('-------------------');
  }
}

void main() {
  print('--- Encapsulation with Validation Demonstration ---\n');

  UserProfile user = UserProfile('Aadarsh', 20, 95.5);
  user.displayProfile();

  print('\n1. Applying Valid Updates:');
  user.name = 'Aadarsh Morey';
  user.age = 22;
  user.score = 99.0;
  user.displayProfile();

  print('\n2. Applying Invalid Updates (Triggering Setters Validation):');
  user.name = '   ';    // Rejected
  user.age = 135;       // Rejected (> 120)
  user.score = -15.0;   // Rejected (< 0)

  print('\n3. Verified State After Invalid Attempts:');
  user.displayProfile();
}
