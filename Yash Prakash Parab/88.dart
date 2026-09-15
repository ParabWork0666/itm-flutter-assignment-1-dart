// Base class
abstract class Vehicle {
  String name;
  Vehicle(this.name);
}

// Subclass Car
class Car extends Vehicle {
  int doors;
  Car(String name, this.doors) : super(name);

  void drive() {
    print('Driving $name with $doors doors! 🚗');
  }
}

// Subclass Bike
class Bike extends Vehicle {
  bool hasBasket;
  Bike(String name, this.hasBasket) : super(name);

  void ride() {
    print('Riding $name (Has basket: $hasBasket)! 🚲');
  }
}

void inspectVehicle(Vehicle v) {
  print('Inspecting: "${v.name}"');

  // 1. Using 'is' operator (equivalent to instanceof) with Dart smart casting
  if (v is Car) {
    print('  -> [is Car]: Object is an instance of Car.');
    v.drive(); // Smart cast: 'v' is automatically treated as Car here!
  } else if (v is Bike) {
    print('  -> [is Bike]: Object is an instance of Bike.');
    v.ride(); // Smart cast: 'v' is automatically treated as Bike here!
  }

  // 2. Using 'is!' operator (negated type check)
  if (v is! Car) {
    print('  -> [is! Car]: Confirmed "${v.name}" is NOT a Car.');
  }

  print('----------------------------------------------------');
}

void main() {
  print('--- "is" and "is!" Type Checking Demonstration ---\n');

  List<Vehicle> vehicles = [
    Car('Tesla Model S', 4),
    Bike('Hero Cycle', true),
    Car('BMW M4', 2),
  ];

  for (Vehicle vehicle in vehicles) {
    inspectVehicle(vehicle);
  }
}
