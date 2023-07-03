import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/auth_screens/signin_screen.dart';
import 'package:dream_buddy/screens/auth_screens/signup_screen.dart';
import 'package:dream_buddy/screens/create_character/choose_character_type.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/unboarding/amelia.png"),
                        Text("Amelia, polite firefighter, 5 y.o.", style: kBodyTextStyle.copyWith(fontStyle: FontStyle.italic) ),
                        SizedBox(height: 30),
                        Image.asset("assets/images/unboarding/people.png"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFFAD0D),
                            ),
                            Text(" Join more than 10,000 families  ", style: kBodyTextStyle)
                          ]
                        ),
                        SizedBox(height: 30)
                      ],
                    )),
                Expanded(
                  child: StackedRotContainers(
                    // height: 300,
                   child: Center(
                     child: SingleChildScrollView(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Text(
                             "Create personalized stories for your kids",
                             style: kHeaderTextStyle,
                           ),
                           SizedBox(height: 30),
                           Text("Teach your kids the right morals and solve psychological issues with custom illustrations and story plots.",
                               style: kBodyTextStyle,
                           ),
                           SizedBox(height: 30),
                           PrimaryButton(
                             text: "Create a character",
                             onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                             },
                           )
                         ],
                       ),
                     ),
                   ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
