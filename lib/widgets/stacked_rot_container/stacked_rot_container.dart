import 'package:flutter/material.dart';

class StackedRotContainers extends StatelessWidget {
  Widget? child;
  double? width, height;
  EdgeInsets? padding;
  StackedRotContainers({this.child, this.width, this.height, this.padding});
  double angle = -5;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Transform.rotate(
              angle: angle * 0.0175,
              child: MyContainer(
                height: height ?? constraints.maxHeight,
                width: width ?? constraints.maxHeight,
              ),),
            MyContainer(
              height: height ?? constraints.maxHeight,
              width: width ?? constraints.maxHeight,
              child: Padding(
                padding: padding ??  EdgeInsets.symmetric(
                    horizontal: constraints.maxWidth * 0.1 ),
               child: child,
        ),

            ),
          ],
        );
      }
    );
  }
}

class MyContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final Key? containerKey;
   MyContainer({
     this.height, this.child, this.width, this.containerKey
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: containerKey,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF1F3242)),
      ),
      child: child,
    );
  }
}
