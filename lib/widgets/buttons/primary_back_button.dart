import 'package:flutter/material.dart';

class PrimaryBackButton extends StatelessWidget {
  Function onTap;
  PrimaryBackButton({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          onTap();
        },
        child: Image.asset("assets/buttons/button_back.png"));
  }
}