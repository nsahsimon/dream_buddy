import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_story_morale.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/screens/create_story/components/get_user_description_tile.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseProblemsFaced extends StatefulWidget {
  double percent;
  ChooseProblemsFaced({this.percent = 10});

  @override
  State<ChooseProblemsFaced> createState() => _ChooseProblemsFacedState();
}

class _ChooseProblemsFacedState extends State<ChooseProblemsFaced> {

  String title = "Select the problem the child faces";
  String description = "";
  TextEditingController problemDescriptionController = TextEditingController();

  List<int> selectedIndices = [];
  int selectedIndex = -1;
  Map<String, String>
  problems =
  {
    'Anger management' : "assets/problems_child_faces/anger_management.png",
    'Teeth brushing': "assets/problems_child_faces/dress_according_to_weather.png",
    'Staying clean' : "assets/problems_child_faces/listen_to_parents.png",
    'Respect the elders' : "assets/problems_child_faces/respect_the_others.png",
    'Dress according to weather' : "assets/problems_child_faces/staying_clean.png",
    'Listen to your parents' : "assets/problems_child_faces/teeth_brushing.png",
  }
  ;

  List<Widget> get children => [
    ...List.generate(
        problems.length, (index) => CustomListTile(
      title: Text(problems.keys.toList()[index]),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 70,
      highlight: index == selectedIndex,
      trailing: Image.asset(problems.values.toList()[index]),
      onPressed: (){
        setState(() {
          selectedIndex = index;
        });
      },

    )),
    SizedBox(height: 20,),
    GetUserDescriptionTile(
        controller: problemDescriptionController,
        hintText: "The problem",
        headText: "Describe the problem the child is facing in your own words"),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStoryMorale(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

