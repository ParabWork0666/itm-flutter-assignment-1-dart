// Base Class A
class A {
  A() {
    print('Constructor A: Class A initialized.');
  }
}

// Intermediate Class B extending A
class B extends A {
  B() : super() {
    print('Constructor B: Class B initialized.');
  }
}

// Derived Class C extending B
class C extends B {
  C() : super() {
    print('Constructor C: Class C initialized.');
  }
}

void main() {
  print('--- Multi-level Inheritance & Constructor Chaining Demonstration ---\n');

  print('Instantiating Object of Class C (triggers constructor chain A -> B -> C):');
  C obj = C();
  print('Created object of type: ${obj.runtimeType}');
}
