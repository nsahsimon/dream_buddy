import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  PrimaryButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onPressed != null) onPressed!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12,),
        decoration: BoxDecoration(
            color: Color(0xFF6667AB),
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Color(0xFF1F3242))
        ),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(color: Color(0xFFFFFFFF)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}


class PrimaryButtonSmall extends StatelessWidget {
  final String? text;
  final Function? onPressed;
  PrimaryButtonSmall({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(onPressed != null) onPressed!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Color(0xFF6667AB),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Color(0xFF1F3242))
        ),
        child: Text(
            "$text",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
