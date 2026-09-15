class Complex {
  double real;
  double imaginary;

  // 1. Default Unnamed Constructor (sets real = 0, imaginary = 0)
  Complex()
      : real = 0.0,
        imaginary = 0.0;

  // 2. Named Parameterized Constructor
  Complex.withValues(this.real, this.imaginary);

  // 3. Named Constructor for Real Numbers Only (imaginary = 0)
  Complex.realOnly(this.real) : imaginary = 0.0;

  // 4. Named Constructor for Pure Imaginary Numbers Only (real = 0)
  Complex.imaginaryOnly(this.imaginary) : real = 0.0;

  void display(String label) {
    String sign = imaginary >= 0 ? '+' : '-';
    print('$label -> ${real} $sign ${imaginary.abs()}i');
  }
}

void main() {
  print('--- Named Constructors & Overloading Demonstration ---\n');

  Complex c1 = Complex();
  c1.display('1. Default Constructor');

  Complex c2 = Complex.withValues(4.5, -3.2);
  c2.display('2. Complex.withValues(4.5, -3.2)');

  Complex c3 = Complex.realOnly(7.0);
  c3.display('3. Complex.realOnly(7.0)');

  Complex c4 = Complex.imaginaryOnly(5.5);
  c4.display('4. Complex.imaginaryOnly(5.5)');
}
