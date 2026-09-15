// Parent class
class Printer {
  void printMessage() {
    print('Parent (Printer): Printing standard black and white document.');
  }
}

// Child class extending Printer
class ColorPrinter extends Printer {
  @override
  void printMessage() {
    print('Child (ColorPrinter): Printing vibrant high-resolution color document.');
  }
}

void main() {
  print('--- Parent Reference & Child Object Demonstration ---\n');

  // Assigning child object (ColorPrinter) to parent reference variable (Printer)
  Printer myPrinter = ColorPrinter();

  print('Reference Type : Printer (Parent)');
  print('Object Type    : ColorPrinter (Child)\n');

  // Invoking overridden method through parent reference
  // Executing child\'s version at runtime
  myPrinter.printMessage();
}
