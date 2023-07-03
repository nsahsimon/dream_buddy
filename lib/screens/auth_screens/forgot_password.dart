import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';
import '../auth_screens/components.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

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
                        "Forgot password ?",
                        style: kHeaderTextStyle,
                      ),
                      SizedBox(height: 15),
                      Text(
                        "No worries, we’ll send you a reset link with instructions.",
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15),

                      Form(
                          child: Column(
                            children: [
                              CustomTextformField(
                                controller: emailController,
                                hintText: "Your email",
                              ),
                              SizedBox(height: 10),
                            ]
                          )),
                      SizedBox(height: 15),
                      PrimaryButton(
                        text: "Reset password",
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
