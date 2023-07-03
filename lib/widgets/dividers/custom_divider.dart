import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  String text;
  CustomDivider({
    this.text = "or"
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Divider(thickness: 2,)),
          SizedBox(width: 20),
          Text(text, ),
          SizedBox(width: 20),
          Expanded(child: Divider(thickness: 2,)),
        ]
    );
  }
}