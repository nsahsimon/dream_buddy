import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  Function onTap;
  DeleteButton({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          onTap();
        },
        child: Image.asset("assets/buttons/delete.png"));
  }
}