// First mixin: Printable
mixin Printable {
  void printContent(String text) {
    print('[Printable]: Sending to printer -> "$text"');
  }
}

// Second mixin: Showable
mixin Showable {
  void showDetails(String title, String details) {
    print('[Showable]: Displaying UI [$title] -> $details');
  }
}

// Class Document applying multiple mixins using 'with Printable, Showable'
class Document with Printable, Showable {
  String title;
  String content;

  Document(this.title, this.content);

  void render() {
    print('Processing Document: "$title"');
    // Invoking methods from Printable mixin
    printContent(content);
    // Invoking methods from Showable mixin
    showDetails(title, content);
  }
}

void main() {
  print('--- Multiple Mixins (Printable & Showable) Demonstration ---\n');

  Document doc = Document('Flutter Lab Report', 'Dart OOP multiple mixin support.');
  doc.render();
}
