class Employee {
  int id;
  String name;
  double salary;

  // Constructor where parameter names match instance variable names exactly.
  // The 'this' keyword resolves shadowing by referring directly to the current instance variables.
  Employee(int id, String name, double salary)
      : this.id = id,
        this.name = name,
        this.salary = salary;

  // Method displaying employee details
  void displayInfo() {
    print('--- Employee Info ---');
    print('ID     : $id');
    print('Name   : $name');
    print('Salary : \$${salary.toStringAsFixed(2)}');
    print('---------------------');
  }
}

void main() {
  print('--- Demonstrating "this" Keyword in Dart ---\n');

  Employee emp = Employee(1001, 'Aadarsh Morey', 75000.0);
  emp.displayInfo();
}
