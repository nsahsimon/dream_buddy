import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/create_character/choose_age.dart';
import 'package:dream_buddy/screens/create_character/components/create_character_layout.dart';
import 'package:dream_buddy/screens/home_screen/home_screen.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';


class StoryCreationScreen extends StatefulWidget {
  double percent;
  StoryCreationScreen({this.percent = 10});

  @override
  State<StoryCreationScreen> createState() => _StoryCreationScreenState();
}

class _StoryCreationScreenState extends State<StoryCreationScreen> {

  int currentIndex = 0;

  Future<void> animateProcess() async{
    while(currentIndex < 4) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        currentIndex += 1;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    animateProcess();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBgColor,
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: RobotStackedContainers(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Your story is almost ready ...",
                      textAlign: TextAlign.center,
                      style: kHeaderTextStyle,
                    ),
                  ),
                  SizedBox(height: 30),
                  ProcessTile(text: "Analyzing received data", isComplete: currentIndex > 0),
                  ProcessTile(text: "Planning scenes", isComplete: currentIndex > 1),
                  ProcessTile(text: 'Creating sketches', isComplete: currentIndex > 2),
                  ProcessTile(text: "Customizing visual style", isEnd: true, isComplete: currentIndex > 3),
                  PrimaryButton(
                    text: "Proceed",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  )

                ],
              ),
            ),
          ),
        )
    );

  }
}

class ProcessTile extends StatelessWidget {
  bool isComplete;
  bool isEnd;
  String text;
  ProcessTile({
    this.isComplete = false,
    this.isEnd = false,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isComplete
                ? Icon( Icons.check_circle, color: Color(0xFF1A936F))
                : Icon( Icons.circle_outlined, color: Colors.black38,),
            SizedBox(
              height: 20,
              child: Visibility(
                visible: !isEnd,
                child: VerticalDivider(
                  color: Colors.black38,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: 20),
        Text(
            text,
            style: TextStyle(color: isComplete ? Colors.black : Colors.black38,)
        )
      ],
    );
  }
}

