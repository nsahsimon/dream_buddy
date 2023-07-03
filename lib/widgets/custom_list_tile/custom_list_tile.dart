import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  double? height;
  double? width;
  Function? onPressed;
  Widget? leading;
  Widget? trailing;
  Widget? title;
  bool highlight;

  CustomListTile({
    this.height,
    this.width,
    this.title,
    this.trailing,
    this.leading,
    this.onPressed,
    this.highlight = false
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double frameHeight = height ?? constraints.maxHeight;
        double frameWidth = width ?? constraints.maxWidth;
        double innerConHeight = frameHeight - 5;
        double innerConWidth  = frameWidth - 5;
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: frameHeight,
            width: frameWidth,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  // alignment: Alignment.bottomRight,
                  child: Container(
                      height: innerConHeight,
                      width: innerConWidth,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xFF1F3242)),
                      ),
                    child: null
                  )
                ),
                Positioned(
                  // alignment: Alignment.topLeft,
                  top: 0,
                    left: 0,
                    child: Container(
                        height: innerConHeight,
                        width: innerConWidth,
                        decoration: BoxDecoration(
                          color: highlight ? Color(0xffE3E4F1) : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xFF1F3242)),
                        ),
                        child: Center(
                          child: ListTile(
                            onTap: (){
                              if(onPressed != null) {
                                onPressed!();
                              }
                            },
                            leading: leading,
                            title: title,
                            trailing: trailing,
                          ),
                        )
                    )
                )
              ],
            ),

          ),
        );
      }
    );
  }
}
