class Employee {
  // Private fields prefixed with leading underscore '_'
  int _empId;
  String _name;
  double _salary;
  String _department;

  // Constructor with initializer list and setter validation
  Employee(this._empId, String name, double salary, String department)
      : _name = 'Unknown',
        _salary = 0.0,
        _department = 'Unassigned' {
    this.name = name;
    this.salary = salary;
    this.department = department;
  }

  // Public Getter for empId (Read-only ID)
  int get empId => _empId;

  // Public Getter & Setter for _name
  String get name => _name;
  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value.trim();
    } else {
      print('Error: Employee name cannot be empty. Update rejected.');
    }
  }

  // Public Getter & Setter for _salary with non-negative validation
  double get salary => _salary;
  set salary(double value) {
    if (value >= 0) {
      _salary = value;
    } else {
      print('Error: Salary cannot be negative (\$value). Update rejected.');
    }
  }

  // Public Getter & Setter for _department
  String get department => _department;
  set department(String value) {
    if (value.trim().isNotEmpty) {
      _department = value.trim();
    } else {
      print('Error: Department cannot be empty. Update rejected.');
    }
  }

  void displayEmployeeInfo() {
    print('--- Employee Record ---');
    print('  ID         : $_empId');
    print('  Name       : $_name');
    print('  Department : $_department');
    print('  Salary     : \$${_salary.toStringAsFixed(2)}');
    print('-----------------------');
  }
}

void main() {
  print('--- Complete Dart Class (Private Fields, Getters & Setters) Demonstration ---\n');

  print('1. Creating Employee instance using Constructor:');
  Employee emp = Employee(501, 'Aadarsh Morey', 85000.0, 'Engineering');
  emp.displayEmployeeInfo();

  print('\n2. Updating properties via public setters:');
  emp.salary = 95000.0;
  emp.department = 'AI & Data Science';

  print('   Reading updated fields via getters:');
  print('   Updated Salary     : \$${emp.salary}');
  print('   Updated Department : ${emp.department}');

  print('\n3. Testing Setter Validation Constraints:');
  emp.salary = -10000.0; // Rejected by setter validation rule
  emp.name = '   ';       // Rejected by setter validation rule

  print('\n4. Final Verified Employee State:');
  emp.displayEmployeeInfo();
}
