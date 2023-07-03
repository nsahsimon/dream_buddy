import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_problems_faced.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseStoryType extends StatefulWidget {
  double percent;
  ChooseStoryType({this.percent = 10});

  @override
  State<ChooseStoryType> createState() => _ChooseStoryTypeState();
}

class _ChooseStoryTypeState extends State<ChooseStoryType> {

  String title = "Select the story type";
  String description = "";

  List<int> selectedIndices = [];
  int selectedIndex = -1;
  Map<String, String>
  storyStyles =
  {
    'Adventure' : "assets/story_types/adventure.png",
    'Bedtime story': "assets/story_types/bedtime_story.png",
    'Educational' : "assets/story_types/educational.png",
    'Fable' : "assets/story_types/fable.png",
    'Fairy tale' : "assets/story_types/fairy_tale.png",
    'Mystery' : "assets/story_types/mystery.png",
    'Realistic fiction' : "assets/story_types/realistic_fiction.png",
    'Science fiction' : "assets/story_types/science_fiction.png",
  }
  ;

  List<Widget> get children => [
    ...List.generate(
        storyStyles.length, (index) => CustomListTile(
      title: Text(storyStyles.keys.toList()[index]),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 70,
      highlight: index == selectedIndex,
      trailing: Image.asset(storyStyles.values.toList()[index]),
      onPressed: (){
        setState(() {
          selectedIndex = index;
        });
      },

    )),
    SizedBox(height: 20,)
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseProblemsFaced(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

