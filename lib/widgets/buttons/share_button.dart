import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  Function onTap;
  ShareButton({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          onTap();
        },
        child: Image.asset("assets/buttons/share.png"));
  }
}