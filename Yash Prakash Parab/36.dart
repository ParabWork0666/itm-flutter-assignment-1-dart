// Base class
class Animal {
  String name;

  Animal(this.name);

  void sound() {
    print('$name makes a generic animal sound.');
  }
}

// Subclass Dog extending Animal
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void sound() {
    print('$name barks: Woof! Woof!');
  }
}

// Subclass Cat extending Animal
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void sound() {
    print('$name meows: Meow! Meow!');
  }
}

void main() {
  print('--- Animal Inheritance & Method Overriding Demonstration ---\n');

  Animal genericAnimal = Animal('Generic Animal');
  Dog dog = Dog('Buddy');
  Cat cat = Cat('Whiskers');

  genericAnimal.sound();
  dog.sound();
  cat.sound();
}
