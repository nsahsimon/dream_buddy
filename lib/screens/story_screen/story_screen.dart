import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/models/story/story.dart';
import 'package:dream_buddy/widgets/buttons/delete_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_back_button.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/share_button.dart';
import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  Story story;
  StoryScreen({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: LayoutBuilder(
          builder: (context, constraints) {
            double imageHeight = constraints.maxHeight * 0.25;
            double imageWidth = 150;
            double cardHeight = constraints.maxHeight * 0.75;
            double dividerHeight = cardHeight * 0.06;
            return Padding(
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                        child: StackedRotContainers(
                          height: cardHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ShareButton(onTap: (){}),
                                        DeleteButton(onTap: (){})
                                      ],
                                    ),
                                  )),
                              Center(
                                  child: Text(
                                    story.title,
                                    textAlign: TextAlign.center,
                                    style: kHeaderTextStyle,
                                  )),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.book, color: Colors.grey,),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Length", style: kBodyTextStyle),
                                              Text(story.lengthStr, style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black )),
                                            ],
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: dividerHeight ,
                                      child: VerticalDivider(color: Colors.grey,)),
                                  // SizedBox(width: 20),
                                  Expanded(flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.timelapse, color: Colors.grey,),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Read time", style: kBodyTextStyle),
                                              Text(story.readTimeStr, style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold, color: Colors.black )),
                                            ],
                                          ),
                                        ],
                                      )),                                ],
                              ),
                              SizedBox(height: 20),
                              Expanded(
                                flex: 20,
                                child: SingleChildScrollView(
                                  child: Center(
                                      child: Text(
                                        story.description,
                                        textAlign: TextAlign.start,
                                        style: kBodyTextStyle,
                                      )),
                                ),
                              ),
                              // Expanded(flex: 10, child: null),
                              PrimaryButton(
                                text: "Read",
                                onPressed: () {}
                              ),
                              SizedBox(height: 20)

                            ],
                          ),
                        )),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: imageHeight,
                        width: imageWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xFF1F3242)),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(story.imagePath),
                                    fit: BoxFit.fill,
                                  ),
                                  // border: Border.all(color: Color(0xFF1F3242)),
                                ),
                                child: null,
                            )
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: PrimaryBackButton(onTap: (){}),
                  )
                ],
              ),
            );
          }),
    );
  }
}




