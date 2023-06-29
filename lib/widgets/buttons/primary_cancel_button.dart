import 'package:flutter/material.dart';

class PrimaryCancelButton extends StatelessWidget {
  Function onTap;
  PrimaryCancelButton({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          onTap();
        },
        child: Image.asset("assets/buttons/button_cancel.png"));
  }
}