import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/survey/components.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';


class PopupSurveyEnd extends StatefulWidget {
  const PopupSurveyEnd({Key? key}) : super(key: key);

  @override
  State<PopupSurveyEnd> createState() => _PopupSurveyEndState();
}

class _PopupSurveyEndState extends State<PopupSurveyEnd> {

  TextEditingController reviewController = TextEditingController();

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
                        "Thank you for the review",
                        style: kHeaderTextStyle,
                      ),
                      Text(
                        "Could you please tell us what to improve to make the app even better",
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle
                      ),

                      Form(
                          child: Column(
                            children: [
                              CustomTextformField(
                                controller: reviewController,
                                hintText: "Your review",
                                maxLines: 5,
                              ),
                              SizedBox(height: 10),
                            ]
                          )),
                      PrimaryButton(
                        text: "Submit",
                      ),
                    ]
                  ),
                ),
              ),
            ))
      ),
    );
  }
}
