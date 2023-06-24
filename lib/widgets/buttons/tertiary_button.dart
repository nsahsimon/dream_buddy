import 'package:flutter/material.dart';


class TertiaryButton extends StatelessWidget {
  final String? text;
  final Function? onPressed;
   TertiaryButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if(onPressed != null) onPressed!();
      },
      style: TextButton.styleFrom(
        backgroundColor: Color(0xFFE8E9F3),
        side: BorderSide(
          color: Color(0xFF6667AB)
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE8E9F3),
        ),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(color: Color(0xFF6667AB))
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
    return TextButton(
      onPressed: () {
        if(onPressed != null) onPressed!();
      },
      style: TextButton.styleFrom(
          backgroundColor: Color(0xFF6667AB),
          side: BorderSide(
              color: Color(0xFF1F3242)
          )
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFF6667AB),
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
