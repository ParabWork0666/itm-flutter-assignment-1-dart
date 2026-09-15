class Person {
  // Private fields (prefixed with underscore)
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value.trim();
    } else {
      print('Error: Name cannot be empty.');
    }
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int value) {
    if (value >= 0 && value <= 150) {
      _age = value;
    } else {
      print('Error: Invalid age ($value). Must be between 0 and 150.');
    }
  }
}

void main() {
  print('--- Private Fields, Getters, and Setters in Dart ---\n');

  // Instantiate object
  Person person = Person('Aadarsh', 20);

  // Reading properties via getters
  print('Initial Name : ${person.name}');
  print('Initial Age  : ${person.age}');

  print('\nUpdating values using setters...');
  person.name = 'Aadarsh Morey';
  person.age = 21;

  // Reading updated properties via getters
  print('Updated Name : ${person.name}');
  print('Updated Age  : ${person.age}');

  print('\nTesting Validation with Invalid Setter Values:');
  person.name = '';   // Triggers validation error
  person.age = -5;    // Triggers validation error
}
