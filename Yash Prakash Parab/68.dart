// First mixin: Flyable
mixin Flyable {
  void fly() {
    print('[Flyable]: Flapping wings and soaring high in the air! 🕊️');
  }
}

// Second mixin: Eatable
mixin Eatable {
  void eat(String food) {
    print('[Eatable]: Munching on $food! 🌾');
  }
}

// Class Duck incorporating both Flyable and Eatable mixins using 'with Flyable, Eatable'
class Duck with Flyable, Eatable {
  String name;

  Duck(this.name);

  void showCapabilities() {
    print('Duck Name: $name');
    // Invoking method from Flyable mixin
    fly();
    // Invoking method from Eatable mixin
    eat('grains and fish');
  }
}

void main() {
  print('--- Multiple Mixins (Flyable & Eatable) Demonstration ---\n');

  Duck duck = Duck('Donald');
  duck.showCapabilities();
}
