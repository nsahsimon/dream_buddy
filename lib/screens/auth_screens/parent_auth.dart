import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';
import '../auth_screens/components.dart';


class ParentAuth extends StatefulWidget {
  const ParentAuth({Key? key}) : super(key: key);

  @override
  State<ParentAuth> createState() => _ParentAuthState();
}

class _ParentAuthState extends State<ParentAuth> {

  TextEditingController emailController = TextEditingController();

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
                        "Parents section",
                        style: kHeaderTextStyle,
                      ),
                      Text(
                        "Solve the equation to access the section:",
                        style: kBodyTextStyle,
                      ),

                      Text(
                          "8 + 4 = 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                      Form(
                          child: Column(
                            children: [
                              CustomTextformField(
                                controller: emailController,
                                hintText: "The solution",
                              ),
                              SizedBox(height: 10),
                            ]
                          )),
                      PrimaryButton(
                        text: "Get access",
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
