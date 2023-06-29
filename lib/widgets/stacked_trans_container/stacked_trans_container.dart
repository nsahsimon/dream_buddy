import 'package:flutter/material.dart';

class StackedTransContainers extends StatelessWidget {
  Widget? child;
  double? width, height;
  EdgeInsets? padding;
  String? imagePath;
  String? text;
  Color color;
  StackedTransContainers({this.child, this.width, this.height, this.padding, this.imagePath, this.text, this.color = Colors.white});
  double angle = -5;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: MyContainer(
                  height: height ?? constraints.maxHeight,
                  width: width ?? constraints.maxHeight,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: MyContainer(
                  height: height ?? constraints.maxHeight,
                  width: width ?? constraints.maxHeight,
                  color: color,
                  child: Padding(
                    padding: padding ??  EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.1 ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text("$text")
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Image.asset('$imagePath')
                        )
                      ]
                    ),
                  ),

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
  final Color color;
  MyContainer({
    this.height, this.child, this.width, this.containerKey, this.color = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: containerKey,
      height: height,
      width: width,

      decoration: BoxDecoration(
        color: color,
        // color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF1F3242)),
      ),
      child: child,
    );
  }
}
