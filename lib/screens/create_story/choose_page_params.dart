import 'package:dream_buddy/screens/create_story/story_creation.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/form_fields/primary_dropdown_field.dart';
import 'package:flutter/material.dart';

import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_story_morale.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/screens/create_story/components/get_user_description_tile.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';


class ChoosePageParams extends StatefulWidget {
  double percent;
  ChoosePageParams({this.percent = 10});

  @override
  State<ChoosePageParams> createState() => _ChoosePageParamsState();
}

class _ChoosePageParamsState extends State<ChoosePageParams> {

  String title = "";
  String description = "Note that each page costs 1 star. The more pages in a story the more stars it cost.";

  List<Widget> languages = [Text('English'), Text('French'), Text('Spanish'), Text('Latin')];
  List<Widget> pageNumbers = List.generate(50, (index) => Text("${1 + index}"));
  List<Widget> readersAge = List.generate(70, (index) =>  Text("${1 + index}"));


  List<Widget> get children => [
    SizedBox(height: 15),
    Text("Select the number of pages", style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold)),
    SizedBox(height: 15),
    Text(description, style: kBodyTextStyle),
    SizedBox(height: 15),
    PrimaryDropdownField(
        hintText: "Number of pages",
        items: pageNumbers
  ),
    SizedBox(height: 15),
    Text("Select the language for the story", style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold)),
    SizedBox(height: 15),
    PrimaryDropdownField(
        hintText: "Number of pages",
        items: languages
    ),
    SizedBox(height: 15),
    Text("Select the number of pages", style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold)),
    SizedBox(height: 15),
    PrimaryDropdownField(
        hintText: "Select the reader\'s age",
        items: readersAge
    ),
    SizedBox(height: 20,),
    PrimaryButton(
      text: "Create the story",
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => StoryCreationScreen()));
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
          description: "",
          children: children,
          showBottomButtons: false,
          onLeftButtonPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStoryMorale(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

