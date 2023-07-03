import 'package:flutter/material.dart';
class CustomTextformField extends StatefulWidget {
  const CustomTextformField({
    super.key,
    required this.controller,
    required this.hintText,
    this.showVisibility = false,
    this.maxLines = 1,
  });

  final String? hintText;
  final bool showVisibility;
  final TextEditingController controller;
  final int maxLines;

  @override
  State<CustomTextformField> createState() => _CustomTextformFieldState();
}

class _CustomTextformFieldState extends State<CustomTextformField> {
  bool hideText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      controller: widget.controller,
      obscureText: hideText && widget.showVisibility,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: Visibility(
          visible: widget.showVisibility,
          child: hideText == true
              ? IconButton(
            onPressed: (){
              setState(() {
                hideText = false;
              });
            },
            icon: Icon(Icons.visibility),
          )
              : IconButton(
            onPressed: (){
              setState(() {
                hideText = true;
              });
            },
            icon: Icon(Icons.visibility_off),
          )
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 5,),
        ),
      ),
    );
  }
}

