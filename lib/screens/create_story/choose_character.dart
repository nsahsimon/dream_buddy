import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_illustration_style.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseCharacterScreen extends StatefulWidget {
  double percent;
  ChooseCharacterScreen({this.percent = 10});

  @override
  State<ChooseCharacterScreen> createState() => _ChooseCharacterScreenState();
}

class _ChooseCharacterScreenState extends State<ChooseCharacterScreen> {
  String title = "Select a character(s)";
  String description = "";

  List<int> selectedIndices = [];
  List<String> characters = ['Peter', 'Simon', 'Anna'];

  List<Widget> get children => [
    ...List.generate(
        characters.length, (index) => CharacterTile(
      name: characters[index],
      width: MediaQuery.of(context).size.width * 0.65,
      height: 70,
      isSelected: selectedIndices.contains(index),
      onPressed: (){
        setState(() {
          if(selectedIndices.contains(index)){
            selectedIndices.remove(index);
          } else {
            selectedIndices.add(index);
          }
        });
      },

    )),
    SizedBox(height: 20,),
    TertiaryButton(
      text: "Create a new character",
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseCharacterTypeScreen()));
      },
    ),
    SizedBox(height: 20)
  ];
  void Function() onLeftButtonPressed = (){};
  void Function() onRightButtonPressed = () {};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: CreateStoryLayout(
          percent: widget.percent,
          title: title,
          description: description,
          children: children,
          onLeftButtonPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseIllustrationStyle(percent: widget.percent + kCreateStoryPercentStep)));
          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }
}

