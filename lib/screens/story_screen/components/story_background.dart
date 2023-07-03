import 'package:dream_buddy/constants.dart';
import 'package:flutter/material.dart';

class StoryBackground extends StatelessWidget {
  String imagePath;
  Widget child;
  StoryBackground({required this.imagePath, required  this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
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
                      child: child
                    );
                  }
              ),
            ],
          )
      ),
    ) ;
  }
}
