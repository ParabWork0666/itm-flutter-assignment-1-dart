// Abstract class Appliance
abstract class Appliance {
  String brand;

  Appliance(this.brand);

  // Abstract method (must be implemented by subclasses)
  void turnOn();

  // Concrete method (provided default implementation in abstract class)
  void showBrand() {
    print('[Concrete Method] Appliance Brand: $brand');
  }
}

// Subclass WashingMachine extending Appliance
class WashingMachine extends Appliance {
  WashingMachine(String brand) : super(brand);

  @override
  void turnOn() {
    print('[Abstract Method Implementation] Washing Machine starting wash cycle... 🧺');
  }
}

void main() {
  print('--- Abstract & Concrete Methods Demonstration ---\n');

  WashingMachine washingMachine = WashingMachine('LG Electronics');

  // Calling concrete method defined in abstract class
  washingMachine.showBrand();

  // Calling abstract method implemented by subclass
  washingMachine.turnOn();
}
