// Mixin Playable
mixin Playable {
  void play() {
    print('Playing music...');
  }
}

// Class Guitar incorporating Playable mixin with 'with' keyword
class Guitar with Playable {
  String brand;

  Guitar(this.brand);

  @override
  void play() {
    print('$brand Guitar: Strumming acoustic chords! 🎸');
  }
}

// Class Piano incorporating Playable mixin with 'with' keyword
class Piano with Playable {
  String brand;

  Piano(this.brand);

  @override
  void play() {
    print('$brand Piano: Playing grand piano melodies! 🎹');
  }
}

void main() {
  print('--- Playable Mixin Demonstration ---\n');

  Guitar guitar = Guitar('Fender');
  Piano piano = Piano('Yamaha');

  guitar.play();
  piano.play();
}
