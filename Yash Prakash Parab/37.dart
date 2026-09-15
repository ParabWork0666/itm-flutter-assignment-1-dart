// Parent Class
class Vehicle {
  String brand;

  // Parent constructor
  Vehicle(this.brand) {
    print('[Parent Constructor] Initialized Vehicle with brand: $brand');
  }

  // Parent method
  void displayInfo() {
    print('[Parent Method] Brand: $brand');
  }
}

// Child Class extending Parent
class Car extends Vehicle {
  String model;

  // Using super(...) in constructor initializer list to call Parent constructor
  Car(String brand, this.model) : super(brand) {
    print('[Child Constructor] Initialized Car with model: $model');
  }

  @override
  void displayInfo() {
    // Using super.displayInfo() to call Parent method
    print('[Child Method] Calling parent displayInfo():');
    super.displayInfo();
    print('[Child Method] Model: $model');
  }
}

void main() {
  print('--- Demonstrating "super" Keyword in Dart ---\n');

  print('Creating Car Object:');
  Car myCar = Car('Toyota', 'Camry');

  print('\nCalling displayInfo():');
  myCar.displayInfo();
}
