import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';
import '../auth_screens/components.dart';


class PopupSurvey extends StatefulWidget {
  const PopupSurvey({Key? key}) : super(key: key);

  @override
  State<PopupSurvey> createState() => _PopupSurveyState();
}

class _PopupSurveyState extends State<PopupSurvey> {

  TextEditingController emailController = TextEditingController();
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBgColor,
          body: Container(
              height: 800,
              padding: const EdgeInsets.all(30.0),
              child: RobotStackedContainers(
                onCloseButtonPressed: () {

                },
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you like Dream Buddy ?",
                            style: kHeaderTextStyle,
                          ),
                          Text(
                              "What is the chance you will recommend the app to your friends?",
                            textAlign: TextAlign.center,
                            style: kBodyTextStyle
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List<IconButton>.generate(5,
                                      (index) => IconButton(
                                        onPressed: (){
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                        icon:  index > selectedIndex
                                            ? Icon(Icons.star, color: Colors.grey.shade400, size: 50,)
                                            : Icon(Icons.star, color: Colors.yellow, size: 50)
                                      ))
                            ],
                          )

                        ]
                    ),
                  ),
                ),
              ))
      ),
    );
  }
}

