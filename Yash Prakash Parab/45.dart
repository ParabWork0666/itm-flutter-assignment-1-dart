// Abstract base class Vehicle
abstract class Vehicle {
  String name;

  Vehicle(this.name);

  // Abstract method start() without implementation
  void start();
}

// Concrete subclass Car implementing start()
class Car extends Vehicle {
  Car(String name) : super(name);

  @override
  void start() {
    print('$name (Car): Engine started with push button ignition! 🚗');
  }
}

// Concrete subclass Bike implementing start()
class Bike extends Vehicle {
  Bike(String name) : super(name);

  @override
  void start() {
    print('$name (Bike): Engine started with self-start switch! 🏍️');
  }
}

void main() {
  print('--- Abstract Class Vehicle Demonstration ---\n');

  Vehicle car = Car('Tesla Model 3');
  Vehicle bike = Bike('Yamaha YZF-R15');

  car.start();
  bike.start();
}
