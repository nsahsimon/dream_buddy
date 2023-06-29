import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_race.dart';
import 'package:dream_buddy/screens/create_character/components/create_character_layout.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:dream_buddy/widgets/form_fields/primary_text_field.dart';
import 'package:flutter/material.dart';


class ChooseAgeScreen extends StatefulWidget {
  double percent;
  ChooseAgeScreen({this.percent = 10});

  @override
  State<ChooseAgeScreen> createState() => _ChooseAgeScreenState();
}

class _ChooseAgeScreenState extends State<ChooseAgeScreen> {
  String title = "Select character's age";
  String description = "Character's age is used to draw appropriate illustrations of the character";


  TextEditingController ageController = TextEditingController();
  List<Widget> get children => [
    PrimaryTextformField(
        controller: ageController,
        hintText: "Character's age")
  ];
  void Function() onLeftButtonPressed = (){};
  void Function() onRightButtonPressed = () {};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: CreateCharacterLayout(
          percent: widget.percent,
          title: title,
          description: description,
          children: children,
          onLeftButtonPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseRaceScreen(percent: widget.percent + kPercentStep)));
          },
          onRightButtonPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseRaceScreen(percent: widget.percent + kPercentStep)));
          },
      ),

    );

  }
}

