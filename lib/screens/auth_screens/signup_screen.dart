import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';
import '../auth_screens/components.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgColor,
        body: Container(
          height: 800,
            padding: const EdgeInsets.all(30.0),
            child: RobotStackedContainers(
              onBackButtonPressed: () {

              },
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Dream Buddy account.",
                        style: kHeaderTextStyle,
                      ),
                      Text(
                        "No annoying spam, we promise",
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      TertiaryButton(
                        text: 'Sign up with facebook'
                      ),
                      CustomDivider(),
                      Form(
                          child: Column(
                            children: [
                              CustomTextformField(
                                  controller: nameController,
                                hintText: "Your name",
                              ),
                              SizedBox(height: 10),
                              CustomTextformField(
                                controller: emailController,
                                hintText: "Your email",
                              ),
                              SizedBox(height: 10),
                              CustomTextformField(
                                controller: passwordController,
                                hintText: "Your password",
                                showVisibility: true,
                              ),
                              SizedBox(height: 10),
                              CustomTextformField(
                                controller: confirmPasswordController,
                                hintText: "Confirm password",
                                showVisibility: true,

                              ),
                              SizedBox(height: 10),
                            ]
                          )),
                      PrimaryButton(
                        text: "Sign Up",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {

                            },
                            child: Text(
                              "I already have an account",
                              style: TextStyle(
                                color: Colors.black,
                                  decoration: TextDecoration.underline),)
                          )
                        ],
                      )
                    ]
                  ),
                ),
              ),
            ))
      ),
    );
  }
}
