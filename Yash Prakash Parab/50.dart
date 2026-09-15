// Abstract base class
abstract class Vehicle {
  String name;

  Vehicle(this.name);

  // Abstract method
  void startEngine();

  // Concrete method
  void stopEngine() {
    print('$name: Engine turned off.');
  }
}

// Mixin providing GPS functionality
mixin GPS {
  void navigateTo(String destination) {
    print('[GPS Navigation]: Navigating route to "$destination"...');
  }
}

// Concrete class extending abstract Vehicle and using GPS mixin
class SmartCar extends Vehicle with GPS {
  SmartCar(String name) : super(name);

  @override
  void startEngine() {
    print('$name: Silent electric motor started! ⚡');
  }
}

void main() {
  print('--- Abstract Class + Mixin Combination Demonstration ---\n');

  SmartCar tesla = SmartCar('Tesla Model S');

  // 1. Invoking abstract method implementation
  tesla.startEngine();

  // 2. Invoking mixin method
  tesla.navigateTo('College Campus');

  // 3. Invoking concrete method from abstract base class
  tesla.stopEngine();
}
