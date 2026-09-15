// Level 1: Grandparent base class Device
class Device {
  String brand;
  Device(this.brand);

  void turnOn() {
    print('[Level 1 - Device]: $brand -> Powering on internal hardware components.');
  }
}

// Level 2: Parent intermediate class Computer extending Device
class Computer extends Device {
  Computer(String brand) : super(brand);

  @override
  void turnOn() {
    super.turnOn(); // Invoking Level 1 implementation
    print('[Level 2 - Computer]: $brand -> Initializing BIOS, CPU cores, and OS Kernel.');
  }
}

// Level 3: Child leaf class Laptop extending Computer
class Laptop extends Computer {
  Laptop(String brand) : super(brand);

  @override
  void turnOn() {
    super.turnOn(); // Invoking Level 2 implementation
    print('[Level 3 - Laptop]: $brand -> Displaying desktop GUI, enabling Bluetooth & Wi-Fi! 💻');
  }
}

void main() {
  print('--- Multi-Level Method Overriding Demonstration ---\n');

  print('1. Level 1 Object (Device):');
  Device device = Device('Generic Device');
  device.turnOn();

  print('\n2. Level 2 Object (Computer):');
  Computer computer = Computer('Dell Workstation');
  computer.turnOn();

  print('\n3. Level 3 Object (Laptop - executes complete override chain):');
  Laptop laptop = Laptop('MacBook Pro');
  laptop.turnOn();
}
