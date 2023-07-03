import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_cancel_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:dream_buddy/widgets/stacked_trans_container/stacked_trans_container.dart';
import 'package:flutter/material.dart';
class CreateCharacterLayout extends StatelessWidget {
  const CreateCharacterLayout({
    super.key,
    required this.percent,
    required this.title,
    required this.description,
    required this.children,
    required this.onLeftButtonPressed,
    required this.onRightButtonPressed,
  });

  final double percent;
  final String title;
  final String description;
  final List<Widget> children;
  final void Function() onLeftButtonPressed;
  final void Function() onRightButtonPressed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          double boxHeight = constraints.maxHeight;
          double cardHeight = constraints.maxHeight * 0.75;

          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              height: boxHeight,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: StackedRotContainers(
                        height: cardHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                    "Create a character",
                                    style: kHeaderTextStyle
                                ),
                              ),
                              SizedBox(height: 15),
                              ///Progress indicator
                              Stack(
                                  children: [
                                    LayoutBuilder(
                                        builder: (context, constraints) {
                                          return Container(
                                            height: 10,
                                            width: constraints.maxWidth,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xff1F3242)),
                                                borderRadius: BorderRadius.circular(7)
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: percent.toInt(),
                                                  child: Container(
                                                    width: 10.0,//constraints.maxWidth * widget.percent / 100,
                                                    color: kAppColor,
                                                    child: null,
                                                  ),
                                                ),
                                                Expanded(
                                                    flex: 100 - percent.toInt(),
                                                    child: Container())
                                              ],
                                            ),
                                          );
                                        }
                                    )
                                  ]
                              ),
                              SizedBox(height: 20),
                              ///title
                              Text(
                                  title,
                                  textAlign: TextAlign.start,
                                  style: kBodyTextStyle.copyWith(color: Colors.black)
                              ),
                              SizedBox(height: 10),
                              ///description
                              Text(
                                  description,
                                  style: kBodyTextStyle

                              ),
                              SizedBox(height: 10),
                              ...children,
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: PrimaryButton(
                                      text: "Next",
                                      onPressed: onLeftButtonPressed,
                                    ),
                                  ),
                                  Expanded(
                                      child: SizedBox(width: 2,)
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TertiaryButton(
                                      text: "Skip",
                                      color: Colors.white,
                                      onPressed: onRightButtonPressed,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 25)

                            ],
                          ),
                        ),
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: PrimaryCancelButton(
                        onTap: (){
                          Navigator.pop(context);
                        }
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
