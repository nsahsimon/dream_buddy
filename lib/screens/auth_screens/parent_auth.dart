import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/settings/menu.dart';
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

  TextEditingController solutionController = TextEditingController();

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
                Navigator.pop(context);
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
                      SizedBox(height: 15),
                      Text(
                        "Solve the equation to access the section:",
                        style: kBodyTextStyle,
                      ),
                      SizedBox(height: 15),
                      Text(
                          "8 + 4 = ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Form(
                          child: Column(
                            children: [
                              CustomTextformField(
                                controller: solutionController,
                                hintText: "The solution",
                              ),
                              SizedBox(height: 10),
                            ]
                          )),
                      SizedBox(height: 15),
                      PrimaryButton(
                        text: "Get access",
                        onPressed: (){
                          if(solutionController.text == '12') {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                          }
                        },
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
