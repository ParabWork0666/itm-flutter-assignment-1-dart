class Student {
  int rollNo;
  String name;
  double marks;

  // Parameterized constructor
  Student(this.rollNo, this.name, this.marks);

  // Method display() to print details
  void display() {
    print('--- Student Details ---');
    print('Roll No : $rollNo');
    print('Name    : $name');
    print('Marks   : ${marks.toStringAsFixed(2)}');
    print('-----------------------');
  }
}

void main() {
  Student student1 = Student(101, 'Aadarsh Morey', 92.5);
  Student student2 = Student(102, 'Rohan Sharma', 85.0);

  student1.display();
  print('');
  student2.display();
}
