import 'package:flutter/material.dart';

class Story {
  String title;
  String imagePath;
  String description;
  String text;
  int readTime = 7;
  int length = 10;
  Story({
    this.imagePath = "assets/images/vika.png" ,
    this.title = "Vikha and lokh : The Galactic Bond ",
    this.description = "Join Vika and her mother Anna on an interstellar journey to the Healthy Habit Galaxy, where they'll meet friendly robots, innovative machines, and learn important lessons about breaking bad habits. A perfect blend of science fiction and educational storytelling.",
    this.text = 'Vika, a lively 5-year-old, had a habit of biting her nails. Her mother, Anna, always advised her against it. One evening, Anna shared a fascinating story about a galaxy far away.'
    'Anna told Vika about a galaxy called \"Stellaris\" that was filled with colorful planets and magical creatures. She described how the inhabitants of Stellaris had a special power that allowed them to shape the world around them with their thoughts and imagination.'
    'In this galaxy, there was a planet named "Nailoria" where the creatures had long, beautiful nails that sparkled in all the colors of the rainbow. These magical nails were a symbol of strength and creativity.'
    'As Anna continued the story, she explained that whenever someone on Nailoria bit their nails, it affected the magic of their planet. It caused the colors to fade, the creativity to diminish, and the energy to decrease. The Nailorians knew that by taking care of their nails, they could keep their planet vibrant and alive.'
    'Vika\'s eyes widened with wonder as she imagined herself in this enchanting galaxy. Anna emphasized that by stopping her habit of nail-biting, Vika could help Nailoria thrive and be a part of the magical world she had just discovered.'
    'From that day on, whenever Vika felt the urge to bite her nails, she would remember the story of Nailoria and the responsibility she had to keep her own "nail planet" beautiful and full of energy. With time and practice, Vika gradually overcame her habit, and her nails grew longer and healthier.'
    'The story of Stellaris and Nailoria became a cherished tale in Vika\'s heart, reminding her of the power of imagination and the importance of taking care of herself. And so, she embarked on many more adventures in her mind, leaving nail-biting behind and embracing a world full of possibilities.'
  });

  String get readTimeStr => '$readTime minutes';
  String get lengthStr => '$length pages';
}