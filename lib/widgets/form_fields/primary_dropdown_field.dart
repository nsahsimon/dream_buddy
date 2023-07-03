import 'package:dream_buddy/constants.dart';
import 'package:flutter/material.dart';


class PrimaryDropdownField extends StatefulWidget {
  String hintText;
  List<Widget> items ;
  PrimaryDropdownField({
    required this.hintText,
    required this.items
  });

  @override
  State<PrimaryDropdownField> createState() => _PrimaryDropdownFieldState();
}

class _PrimaryDropdownFieldState extends State<PrimaryDropdownField> {
  var dropDownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        icon: Icon(Icons.arrow_drop_down_outlined, size: 30) ,
        iconDisabledColor: Colors.grey,
        iconEnabledColor: kAppColor,
        value: dropDownValue,
        items: List.generate(
            widget.items.length,
                (index) => DropdownMenuItem(value: widget.items[index], child: widget.items[index])),
        onChanged: (value) {
          setState(() {
            dropDownValue = value;
          });
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          // suffixIcon: Visibility(
          //     visible: widget.showVisibility,
          //     child: hideText == true
          //         ? IconButton(
          //       onPressed: (){
          //         setState(() {
          //           hideText = false;
          //         });
          //       },
          //       icon: Icon(Icons.visibility),
          //     )
          //         : IconButton(
          //       onPressed: (){
          //         setState(() {
          //           hideText = true;
          //         });
          //       },
          //       icon: Icon(Icons.visibility_off),
          //     )
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 5,),
          ),
        ),
    );
  }
}
