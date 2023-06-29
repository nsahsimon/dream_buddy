import 'package:dream_buddy/widgets/stacked_rot_container/stacked_rot_container.dart';
import 'package:flutter/material.dart';


class RobotStackedContainers extends StatelessWidget {
  final Widget? child;
  final Function? onBackButtonPressed;
  final Function? onCloseButtonPressed;
  const RobotStackedContainers({this.child, this.onBackButtonPressed, this.onCloseButtonPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          double height = constraints.maxHeight;
          double width = constraints.maxWidth;
          debugPrint("Height: ${height}");
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  StackedRotContainers(
                    height: height * 0.805,
                    // width: width * 200,
                    child: child,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset("assets/images/robot.png",
                        height: 0.2206 * height,)),
                ],
              ),
              Visibility(
                visible: onBackButtonPressed != null,
                child: Positioned(
                  // alignment: Alignment.topLeft,
                  top: 20,
                  // left: 10,
                  child: GestureDetector(
                    onTap: (){
                      onBackButtonPressed!();
                    },
                      child: Image.asset("assets/buttons/button_back.png"))
                ),
              ),
              Visibility(
                visible: onCloseButtonPressed != null,
                child: Positioned(
                  // alignment: Alignment.topLeft,
                    top: 130,
                    // left: 10,
                    child: GestureDetector(
                        onTap: (){
                          onCloseButtonPressed!();
                        },
                        child: Image.asset("assets/buttons/button_cancel.png"))
                ),
              ),
            ],
          );
        });
  }
}
