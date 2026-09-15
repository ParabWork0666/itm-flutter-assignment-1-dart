// Base Media class hierarchy
abstract class Media {
  String title;
  Media(this.title);
  void play();
}

// Subclass AudioMedia
class AudioMedia extends Media {
  int durationSeconds;
  AudioMedia(String title, this.durationSeconds) : super(title);

  @override
  void play() {
    print('Playing Audio Track: "$title" ($durationSeconds sec) 🎵');
  }

  // Audio specific method
  void adjustVolume(int level) {
    print('Adjusting Audio Volume for "$title" to $level%');
  }
}

// Subclass VideoMedia
class VideoMedia extends Media {
  String resolution;
  VideoMedia(String title, this.resolution) : super(title);

  @override
  void play() {
    print('Streaming Video: "$title" [$resolution] 🎬');
  }

  // Video specific method
  void setSubtitles(String language) {
    print('Set Subtitles for "$title" to $language');
  }
}

// Parent Factory defining base return type 'Media'
abstract class MediaFactory {
  Media produce(String title);
}

// Child AudioFactory overriding produce() with Covariant Return Type 'AudioMedia'
class AudioFactory extends MediaFactory {
  @override
  AudioMedia produce(String title) {
    print('[AudioFactory]: Creating audio track...');
    return AudioMedia(title, 240);
  }
}

// Child VideoFactory overriding produce() with Covariant Return Type 'VideoMedia'
class VideoFactory extends MediaFactory {
  @override
  VideoMedia produce(String title) {
    print('[VideoFactory]: Rendering video stream...');
    return VideoMedia(title, '1080p Full HD');
  }
}

void main() {
  print('--- Covariant Return Type Method Overriding Demonstration ---\n');

  print('1. AudioFactory producing AudioMedia:');
  AudioFactory audioFactory = AudioFactory();
  // Return type narrowed to AudioMedia without type casting
  AudioMedia track = audioFactory.produce('Interstellar Theme');
  track.play();
  track.adjustVolume(85);

  print('\n2. VideoFactory producing VideoMedia:');
  VideoFactory videoFactory = VideoFactory();
  // Return type narrowed to VideoMedia without type casting
  VideoMedia movie = videoFactory.produce('Avatar: The Way of Water');
  movie.play();
  movie.setSubtitles('English');
}
