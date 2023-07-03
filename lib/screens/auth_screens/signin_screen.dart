import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/auth_screens/forgot_password.dart';
import 'package:dream_buddy/screens/home_screen/home_screen.dart';
import 'package:dream_buddy/widgets/buttons/primary_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';
import '../../widgets/dividers/custom_divider.dart';
import '../auth_screens/components.dart';


class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                        "Welcome back!",
                        style: kHeaderTextStyle,
                      ),
                      Text(
                        "Please login to start using the app",
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      TertiaryButton(
                        text: 'login with facebook'
                      ),
                      CustomDivider(),
                      Form(
                          child: Column(
                            children: [
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
                            ]
                          )),
                      PrimaryButton(
                        text: "Login",
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    TextButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
    },
    child: Text(
    "Forgot password",
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

