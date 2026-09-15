class Car {
  String brand;
  String model;

  // Parameterized constructor
  Car(this.brand, this.model);

  // Method display() to print car details
  void display() {
    print('Car Brand: $brand | Model: $model');
  }
}

void main() {
  print('--- Car Details ---\n');

  // Creating two Car objects
  Car car1 = Car('Tesla', 'Model S');
  Car car2 = Car('BMW', 'M5 CS');

  // Calling display() on both objects
  car1.display();
  car2.display();
}
