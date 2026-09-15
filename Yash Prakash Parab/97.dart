class Person {
  String name;
  int age;
  String city;

  // Primary Constructor initializing all fields
  Person(this.name, this.age, this.city) {
    print('[Primary Constructor]: Instantiated Person(name: "$name", age: $age, city: "$city")');
  }

  // Redirecting Named Constructor 1: Passes default age (18) and default city ("Mumbai")
  Person.withName(String name) : this(name, 18, 'Mumbai');

  // Redirecting Named Constructor 2: Passes default city ("Delhi")
  Person.withNameAndAge(String name, int age) : this(name, age, 'Delhi');

  // Redirecting Named Constructor 3: Default anonymous user
  Person.anonymous() : this('Anonymous', 0, 'Unknown');

  void displayDetails() {
    print('  Name : $name');
    print('  Age  : $age');
    print('  City : $city');
  }
}

void main() {
  print('--- Constructor Redirection (: this(...)) Demonstration ---\n');

  print('1. Direct call to Primary Constructor:');
  Person p1 = Person('Aadarsh', 20, 'Pune');
  p1.displayDetails();

  print('\n2. Call to Person.withName("Rohan") [Redirects via : this(name, 18, "Mumbai")]:');
  Person p2 = Person.withName('Rohan');
  p2.displayDetails();

  print('\n3. Call to Person.withNameAndAge("Siddharth", 22) [Redirects via : this(name, age, "Delhi")]:');
  Person p3 = Person.withNameAndAge('Siddharth', 22);
  p3.displayDetails();

  print('\n4. Call to Person.anonymous() [Redirects via : this("Anonymous", 0, "Unknown")]:');
  Person p4 = Person.anonymous();
  p4.displayDetails();
}
