import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class Character {
  String name;
  Character({this.name = 'John'});

   Widget get avatar => Image.asset("assets/characters/primary_character.png", scale: 0.4,);
}