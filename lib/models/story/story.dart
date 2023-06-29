import 'package:flutter/material.dart';

class Story {
  String title;
  String imagePath;
  String description;
  int readTime = 7;
  int length = 10;
  Story({
    this.imagePath = "assets/images/vika.png" ,
    this.title = "Vikha and lokh : The Galactic Bond ",
    this.description = "Join Vika and her mother Anna on an interstellar journey to the Healthy Habit Galaxy, where they'll meet friendly robots, innovative machines, and learn important lessons about breaking bad habits. A perfect blend of science fiction and educational storytelling."
  });

  String get readTimeStr => '$readTime minutes';
  String get lengthStr => '$length pages';
}