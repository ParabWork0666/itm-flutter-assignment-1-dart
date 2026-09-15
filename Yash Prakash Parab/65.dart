// Abstract class Bird
abstract class Bird {
  String species;

  Bird(this.species);

  // Concrete method fly() shared by all birds
  void fly() {
    print('[$species]: Flapping wings and soaring in the sky! 🦅');
  }

  // Abstract method makeSound() to be implemented by concrete subclasses
  void makeSound();
}

// Subclass Eagle extending Bird
class Eagle extends Bird {
  Eagle() : super('Eagle');

  @override
  void makeSound() {
    print('[$species Sound]: Screeech! High-pitched screeching.');
  }
}

// Subclass Sparrow extending Bird
class Sparrow extends Bird {
  Sparrow() : super('Sparrow');

  @override
  void makeSound() {
    print('[$species Sound]: Chirp! Chirp! Sweet chirping.');
  }
}

void main() {
  print('--- Abstract Class Bird Demonstration ---\n');

  print('1. Eagle Instance:');
  Eagle eagle = Eagle();
  eagle.fly();        // Concrete method from base Bird
  eagle.makeSound();  // Implemented abstract method

  print('\n2. Sparrow Instance:');
  Sparrow sparrow = Sparrow();
  sparrow.fly();        // Concrete method from base Bird
  sparrow.makeSound();  // Implemented abstract method
}
