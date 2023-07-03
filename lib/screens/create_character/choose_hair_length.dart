import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_age.dart';
import 'package:dream_buddy/screens/create_character/choose_hair_type.dart';
import 'package:dream_buddy/screens/create_character/components/create_character_layout.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseHairLengthScreen extends StatefulWidget {
  double percent;
  ChooseHairLengthScreen({this.percent = 10});

  @override
  State<ChooseHairLengthScreen> createState() => _ChooseHairLengthScreenState();
}

class _ChooseHairLengthScreenState extends State<ChooseHairLengthScreen> {
  String title = "Choose hair length";
  String description = "Hair length is used to draw appropriate illustrations of the character";

  int selectedIndex = -1;
  List<String> characterTypes = ['Short', 'Medium', 'Long'];

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
  void Function() onLeftButtonPressed = (){

  };
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseHairTypeScreen(percent: widget.percent + kCreateCharPercentStep)));
          },
          onRightButtonPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseHairTypeScreen(percent: widget.percent + kCreateCharPercentStep)));
          }),
    );

  }
}

