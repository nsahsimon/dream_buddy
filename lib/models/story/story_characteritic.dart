
import 'package:dream_buddy/models/story/story.dart';

class StoryCharacteristic {
  String characteristic;
  String description;
  List<CatExample> examples;

  StoryCharacteristic({
    this.characteristic = "Illustration styles",
    this.description = "",
    this.examples = const []
  });

}

class CatExample {
  String description;
  String imagePath;
  CatExample({this.description = "greed will always lead to downfall", this.imagePath = "assets/illustration_styles/illustration_style_1.png"});

}