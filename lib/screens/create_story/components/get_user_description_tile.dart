import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/screens/survey/components.dart';
import 'package:dream_buddy/widgets/form_fields/primary_text_field.dart';
import 'package:flutter/material.dart';

class GetUserDescriptionTile extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  String headText;
  GetUserDescriptionTile({required this.controller, required this.hintText, required this.headText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        CustomDivider(),
        SizedBox(height: 15),
        Text(headText, style: kBodyTextStyle, textAlign: TextAlign.center,),
        SizedBox(height: 15),
        PrimaryTextformField(controller: controller, hintText: hintText),
        SizedBox(height: 15)

      ],
    );
  }
}
