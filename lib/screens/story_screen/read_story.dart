import 'package:dream_buddy/models/story/story.dart';
import 'package:dream_buddy/screens/home_screen/home_screen.dart';
import 'package:dream_buddy/screens/story_screen/components/story_background.dart';
import 'package:dream_buddy/widgets/buttons/primary_back_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_cancel_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:flutter/material.dart';


class ReadStoryScreen extends StatefulWidget {
  Story story;
  ReadStoryScreen({required this.story});

  @override
  State<ReadStoryScreen> createState() => _ReadStoryScreenState();
}

class _ReadStoryScreenState extends State<ReadStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return StoryBackground(
        imagePath:  widget.story.imagePath,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              double height = constraints.maxHeight;
              double width = constraints.maxWidth;
              double storyCardHeight = height * 0.4;
              return Stack(
                children: [
                  Positioned(
                    top: 20,
                      left: 20,
                      child: PrimaryCancelButton(
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: (){
                          ///go to previous page
                        },
                        child: Image.asset("assets/buttons/story_prev.png"),
                      ),
                    )
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: (){
                            ///go to previous page
                          },
                          child: Image.asset("assets/buttons/story_next.png"),
                        ),
                      )
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: StackedRotContainers(
                        height: storyCardHeight,
                        child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(widget.story.text,
                                  textScaleFactor: 1.5,
                                  ),
                                  SizedBox(height: 30),
                                  PrimaryButton(
                                    text: "Back to library",
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                    },
                                  ),
                                  SizedBox(height: 15),
                                  TertiaryButton(
                                    text: "Read the story again"
                                  ),
                                  SizedBox(height: 35)
                                ]

                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: storyCardHeight * 0.2,
                                decoration: BoxDecoration(
                                  gradient:  LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.white.withOpacity(0.4),
                                        Colors.white,
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: storyCardHeight * 0.2,
                                decoration: BoxDecoration(
                                  gradient:  LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.white,
                                        Colors.white.withOpacity(0.4),
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ) ,
                    )
                  )

                ]
              );
            }
          ),
        ));
  }
}
