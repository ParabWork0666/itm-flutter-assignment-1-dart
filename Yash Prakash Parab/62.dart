class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  // Overriding toString() from base Object class to return formatted string representation
  @override
  String toString() {
    return 'Book[Title: "$title", Author: "$author", Price: \$${price.toStringAsFixed(2)}]';
  }
}

void main() {
  print('--- Overriding toString() Demonstration ---\n');

  Book book1 = Book('Dart Apprentice', 'Ray Wenderlich Team', 45.00);
  Book book2 = Book('Flutter in Action', 'Eric Windmill', 49.99);

  // Printing object directly automatically invokes object\'s toString() method
  print('1. Printing object directly using print(book1):');
  print(book1);

  print('\n2. Using object in string interpolation (\$$book2):');
  print('   Cart Item: $book2');
}
