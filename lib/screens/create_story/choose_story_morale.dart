import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_location.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/screens/create_story/components/get_user_description_tile.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseStoryMorale extends StatefulWidget {
  double percent;
  ChooseStoryMorale({this.percent = 10});

  @override
  State<ChooseStoryMorale> createState() => _ChooseStoryMoraleState();
}

class _ChooseStoryMoraleState extends State<ChooseStoryMorale> {

  String title = "Select the morale of the story";
  String description = "";
  TextEditingController moraleDescriptionController = TextEditingController();

  List<int> selectedIndices = [];
  int selectedIndex = -1;
  Map<String, String>
  morales =
  {
    'Lying breaks trust — even if you’re telling the truth, no one believes a liar' : "assets/problems_child_faces/anger_management.png",
    'Greed will always lead to downfall': "assets/problems_child_faces/dress_according_to_weather.png",
    'Never despise what we can’t have; nothing comes easy' : "assets/problems_child_faces/listen_to_parents.png",
    'Never judge anyone by the way they look' : "assets/problems_child_faces/respect_the_others.png",
    'Talk less and listen more' : "assets/problems_child_faces/staying_clean.png",
    'Cheating will not get you anything. If you cheat, you’ll pay soon enough' : "assets/problems_child_faces/teeth_brushing.png",
    'It’s important to be kind, as it will always be rewarded' : "assets/problems_child_faces/teeth_brushing.png",
    'There’s a time for work and a time for play' : "assets/problems_child_faces/teeth_brushing.png",
    'There’s strength in unity' : "assets/problems_child_faces/teeth_brushing.png",
    'A true friend will always support and stand by you' : "assets/problems_child_faces/teeth_brushing.png",

  }
  ;

  List<Widget> get children => [
    ...List.generate(
        morales.length, (index) => CustomListTile(
      title: Text(morales.keys.toList()[index]),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 100,
      highlight: index == selectedIndex,
      // trailing: Image.asset(morales.values.toList()[index]),
      onPressed: (){
        setState(() {
          selectedIndex = index;
        });
      },

    )),
    SizedBox(height: 20,),
    GetUserDescriptionTile(
        controller: moraleDescriptionController,
        hintText: "The morale",
        headText: "Describe the desired moral in your own words"),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStoryLocation(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

