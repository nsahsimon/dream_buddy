import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  double? height;
  double? width;
  Function? onPressed;
  Widget? leading;
  Widget? trailing;
  Widget? title;

  CustomListTile({
    this.height,
    this.width,
    this.title,
    this.trailing,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double frameHeight = height ?? constraints.maxHeight;
        double frameWidth = width?? constraints.maxWidth;
        double innerConHeight = frameHeight - 40;
        double innerConWidth  = frameWidth - 40;
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: frameHeight,
            width: frameWidth,
            child: Stack(
              children: [
                Positioned(
                  bottom: 15,
                  right: 35,
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
                    child: Container(
                        height: innerConHeight,
                        width: innerConWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
