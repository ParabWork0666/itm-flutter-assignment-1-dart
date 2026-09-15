// Base Animal class hierarchy
abstract class Animal {
  String name;
  Animal(this.name);
  void speak();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void speak() {
    print('$name (Dog): Woof! Woof! 🐕');
  }

  // Dog-specific method
  void fetch() {
    print('$name is playing fetch! 🎾');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void speak() {
    print('$name (Cat): Meow! Meow! 🐱');
  }

  // Cat-specific method
  void purr() {
    print('$name is purring softly... 🐾');
  }
}

// Base Shelter factory returning Animal
abstract class AnimalShelter {
  Animal adoptAnimal(String name);
}

// Subclass DogShelter overriding adoptAnimal with Covariant Return Type 'Dog'
class DogShelter extends AnimalShelter {
  @override
  Dog adoptAnimal(String name) {
    print('DogShelter: Processing dog adoption for $name...');
    return Dog(name);
  }
}

// Subclass CatShelter overriding adoptAnimal with Covariant Return Type 'Cat'
class CatShelter extends AnimalShelter {
  @override
  Cat adoptAnimal(String name) {
    print('CatShelter: Processing cat adoption for $name...');
    return Cat(name);
  }
}

void main() {
  print('--- Covariant Return Types in Dart Demonstration ---\n');

  DogShelter dogShelter = DogShelter();
  // Covariant return type directly returns 'Dog' without requiring type casting!
  Dog myDog = dogShelter.adoptAnimal('Buddy');
  myDog.speak();
  myDog.fetch(); // Accessing Dog-specific method

  print('');

  CatShelter catShelter = CatShelter();
  // Covariant return type directly returns 'Cat' without requiring type casting!
  Cat myCat = catShelter.adoptAnimal('Whiskers');
  myCat.speak();
  myCat.purr(); // Accessing Cat-specific method
}
