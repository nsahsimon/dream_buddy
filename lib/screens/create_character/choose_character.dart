import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_gender.dart';
import 'package:dream_buddy/screens/create_character/components/create_character_layout.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_cancel_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:dream_buddy/widgets/stacked_trans_container/stacked_trans_container.dart';
import 'package:flutter/material.dart';


class ChooseCharacterScreen extends StatefulWidget {
  double percent;
  ChooseCharacterScreen({this.percent = 10});

  @override
  State<ChooseCharacterScreen> createState() => _ChooseCharacterScreenState();
}

class _ChooseCharacterScreenState extends State<ChooseCharacterScreen> {
  String title = "Choose the type of character";
  String description = "Type of character is used to draw appropriate illustrations.";

  int selectedIndex = -1;
  List<String> characterTypes = ['Child', 'Adult', 'Pet'];

  List<CustomListTile> get children => List.generate(
      characterTypes.length,
          (index) => CustomListTile(
            title: Text(characterTypes[index]),
            width: MediaQuery.of(context).size.width * 0.65,
            height: 100,
            highlight: index == selectedIndex,
            onPressed: (){
              setState(() {
                selectedIndex = index;
              });
            },
          ));
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseGenderScreen(percent: widget.percent + kPercentStep)));
          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }
}

