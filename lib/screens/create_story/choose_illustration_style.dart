import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/screens/create_story/choose_story_type.dart';
import 'package:dream_buddy/screens/create_story/components/character_tile.dart';
import 'package:dream_buddy/screens/create_story/components/create_story_layout.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:flutter/material.dart';


class ChooseIllustrationStyle extends StatefulWidget {
  double percent;
  ChooseIllustrationStyle({this.percent = 10});

  @override
  State<ChooseIllustrationStyle> createState() => _ChooseIllustrationStyleState();
}

class _ChooseIllustrationStyleState extends State<ChooseIllustrationStyle> {

  String title = "Select the illustration style";
  String description = "";

  List<int> selectedIndices = [];
  int selectedIndex = -1;
  Map<String, String>
  illustrationStyles =
  {
    'style 1' : "assets/illustration_styles/illustration_style_1.png",
    'style 2': "assets/illustration_styles/illustration_style_1.png",
    'style 3' : "assets/illustration_styles/illustration_style_1.png"}
  ;

  List<Widget> get children => [
    ...List.generate(
        illustrationStyles.length, (index) => CustomListTile(
      title: Text(illustrationStyles.keys.toList()[index]),
      width: MediaQuery.of(context).size.width * 0.65,
      height: 70,
      highlight: index == selectedIndex,
      trailing: Image.asset(illustrationStyles.values.toList()[index]),
      onPressed: (){
        setState(() {
          selectedIndex = index;
        });
      },

    )),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStoryType(percent: widget.percent + kCreateStoryPercentStep)));

          },
          onRightButtonPressed: onRightButtonPressed),
    );

  }

}

