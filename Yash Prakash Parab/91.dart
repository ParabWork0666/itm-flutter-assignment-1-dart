class Student implements Comparable<Student> {
  int rollNo;
  String name;
  double marks;

  Student(this.rollNo, this.name, this.marks);

  // Implementing compareTo method required by Comparable<Student>
  // Sorts students in descending order based on marks
  @override
  int compareTo(Student other) {
    return other.marks.compareTo(this.marks);
  }

  @override
  String toString() {
    return 'Student[RollNo: $rollNo, Name: "$name", Marks: ${marks.toStringAsFixed(1)}]';
  }
}

void main() {
  print('--- Comparable Interface & Object Sorting Demonstration ---\n');

  List<Student> students = [
    Student(101, 'Aadarsh', 88.5),
    Student(102, 'Rohan', 95.0),
    Student(103, 'Siddharth', 72.0),
    Student(104, 'Ananya', 91.5),
  ];

  print('Unsorted Student List:');
  for (Student s in students) {
    print('  $s');
  }

  // Sorting list using list.sort() which uses Comparable.compareTo()
  students.sort();

  print('\nSorted Student List (Descending order by Marks):');
  for (Student s in students) {
    print('  $s');
  }
}
