// Base class Employee
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayDetails() {
    print('Name   : $name');
    print('Salary : \$${salary.toStringAsFixed(2)}');
  }
}

// Subclass Manager extending Employee
class Manager extends Employee {
  double bonus;

  // Constructor using super(name, salary) to initialize parent fields
  Manager(String name, double salary, this.bonus) : super(name, salary);

  // Method to compute total compensation
  double getTotalEarnings() {
    return salary + bonus;
  }

  @override
  void displayDetails() {
    // Using super.displayDetails() to invoke parent method
    super.displayDetails();
    print('Bonus  : \$${bonus.toStringAsFixed(2)}');
    print('Total  : \$${getTotalEarnings().toStringAsFixed(2)}');
  }
}

void main() {
  print('--- Employee & Manager Inheritance Demonstration ---\n');

  print('1. Base Employee Instance:');
  Employee employee = Employee('Aadarsh', 50000.0);
  employee.displayDetails();

  print('\n2. Derived Manager Instance (using super):');
  Manager manager = Manager('Rohan Sharma', 80000.0, 15000.0);
  manager.displayDetails();
}
