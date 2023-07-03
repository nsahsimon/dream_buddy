import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:dream_buddy/widgets/stacked_trans_container/stacked_trans_container.dart';
import 'package:flutter/material.dart';



class CharacterTile extends StatelessWidget {
  String name;
  bool isSelected;
  double? width;
  double? height;
  void Function() onPressed;
  CharacterTile(
  {
    required this.name,
    this.isSelected = false,
    required this.onPressed,
    this.width,
    this.height,

  });

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      leading:Image.asset('assets/characters/primary_character.png'),
      title: Text(name),
      width: width,
      height: height,
      trailing: isSelected
          ? Icon( Icons.check_circle, color: Color(0xFF1A936F))
          : Icon( Icons.circle_outlined, color: Colors.black38,),
      onPressed: onPressed,


    );
  }
}
