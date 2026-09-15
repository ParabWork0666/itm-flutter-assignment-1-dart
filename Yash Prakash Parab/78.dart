// Abstract base class Animal
abstract class Animal {
  String name;

  Animal(this.name);

  // Abstract sound method
  void sound();
}

// Subclass Dog extending Animal
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void sound() {
    print('$name (Dog): Woof! Woof! 🐕');
  }
}

// Subclass Cat extending Animal
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void sound() {
    print('$name (Cat): Meow! Meow! 🐱');
  }
}

void main() {
  print('--- Runtime Polymorphism with Animal References ---\n');

  // Declaring base class Animal references holding subclass objects
  Animal myAnimal1 = Dog('Buddy');
  Animal myAnimal2 = Cat('Whiskers');

  print('1. Calling sound() via Animal reference holding a Dog instance:');
  myAnimal1.sound();

  print('\n2. Calling sound() via Animal reference holding a Cat instance:');
  myAnimal2.sound();
}
