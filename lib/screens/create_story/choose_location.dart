import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_page_params.dart';
import 'package:dream_buddy/screens/create_story/choose_story_morale.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/screens/create_story/components/get_user_description_tile.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseStoryLocation extends StatefulWidget {
  double percent;
  ChooseStoryLocation({this.percent = 10});

  @override
  State<ChooseStoryLocation> createState() => _ChooseStoryLocationState();
}

class _ChooseStoryLocationState extends State<ChooseStoryLocation> {

  String title = "Select the problem the child faces";
  String description = "";
  TextEditingController problemDescriptionController = TextEditingController();

  List<int> selectedIndices = [];
  int selectedIndex = -1;
  Map<String, String>
  locations =
  {
    'Beach' : "assets/story_locations/beach.png",
    'Country Side': "assets/story_locations/country_side.png",
    'Home' : "assets/story_locations/home.png",
    'Mountains' : "assets/story_locations/mountains.png",
    'School' : "assets/story_locations/school.png",
  }
  ;

  List<Widget> get children => [
    ...List.generate(
        locations.length, (index) => CustomListTile(
      title: Text(locations.keys.toList()[index]),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 70,
      highlight: index == selectedIndex,
      trailing: Image.asset(locations.values.toList()[index]),
      onPressed: (){
        setState(() {
          selectedIndex = index;
        });
      },

    )),
    SizedBox(height: 20,),
    GetUserDescriptionTile(
        controller: problemDescriptionController,
        hintText: "The location",
        headText: "Describe the location for the story in your own words"),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChoosePageParams(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

