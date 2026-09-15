// Abstract base class Animal
abstract class Animal {
  String name;

  Animal(this.name);

  // Abstract method
  void makeSound();

  // Concrete method
  void eat() {
    print('$name is eating food.');
  }
}

// Mixin Pet providing pet behavior
mixin Pet {
  void play() {
    print('[Pet Mixin]: Playing fetch with the owner! 🎾');
  }

  void showAffection() {
    print('[Pet Mixin]: Wagging tail enthusiastically! 🐶');
  }
}

// Class Dog extending abstract Animal and applying Pet mixin
class Dog extends Animal with Pet {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks: Woof! Woof! 🐕');
  }
}

void main() {
  print('--- Abstract Class (Animal) + Mixin (Pet) Demonstration ---\n');

  Dog dog = Dog('Buddy');

  print('1. Method from Abstract Base Class Animal:');
  dog.eat();

  print('\n2. Overridden Abstract Method:');
  dog.makeSound();

  print('\n3. Methods from Mixin Pet:');
  dog.play();
  dog.showAffection();
}
