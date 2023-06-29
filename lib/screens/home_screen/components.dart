import 'package:dream_buddy/constants.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({
   required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Divider(thickness: 2,)),
            SizedBox(width: 20),
            Text(text, style: kHeaderTextStyle),
            SizedBox(width: 20),
            Expanded(child: Divider(thickness: 2,)),
          ]
      ),
    );
  }
}


class StoryCard extends StatelessWidget {
  String imagePath;
  String title;
  Function onTap;
  StoryCard({required this.imagePath, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: 150,
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
                      image: AssetImage(imagePath),
                      fit: BoxFit.fill,
                    ),
                    // border: Border.all(color: Color(0xFF1F3242)),
                  ),
                  child: Stack(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            height:constraints.maxHeight,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    kAppColor,
                                    Colors.transparent
                                  ]
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  title,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(color: Colors.white)
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ],
                  )
                )
              )
            );
          }
        ),
      ),
    );
  }
}

class AddStoryCard extends StatelessWidget {

  AddStoryCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              padding: EdgeInsets.all(10),
                height: constraints.maxHeight,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFF1F3242)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create a new story",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle.copyWith(color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle, size: 35, color: Color(0xFF1A936F)),
                      onPressed: (){

                      },
                    )

                  ],
                )
            );
          }
      ),
    );
  }
}