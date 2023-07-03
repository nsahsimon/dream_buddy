import 'dart:ffi';

import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/models/character/character.dart';
import 'package:dream_buddy/widgets/buttons/primary_back_button.dart';
import 'package:dream_buddy/widgets/buttons/tertiary_button.dart';
import 'package:dream_buddy/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:dream_buddy/widgets/star_tracker/star_tracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen();

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  double menuTileWidth = 410;
  double menuTileHeight = 70;

  List<Character> characters = [Character(), Character(name: 'Kate'), Character(name: 'Simon')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(flex: 5, child: Container(),),
            Expanded(
              flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryBackButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                  ),
                  Text("Menu", style: kHeaderTextStyle),
                  StarTracker(starCount: 80)
                ],
            )),
            Expanded(flex: 20,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    ...List.generate(characters.length,
                            (index) => Column(
                              children: [
                                Expanded(
                                  child:characters[index].avatar),
                                // SizedBox(height: 10),
                                Center(child: Text(characters[index].name))
                              ],
                            ))
                  ],

                )
              ),),
            SizedBox(height: 15),
            TertiaryButton(
              text: "Create a new character",
            ),
            Expanded(
              flex: 50,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomListTile(
                      height: menuTileHeight,
                      width: menuTileWidth,
                      leading: Icon(Icons.shield_outlined),
                      title: Text("Privacy")
                    ),
                    SizedBox(height: 10),
                    CustomListTile(
                        height: menuTileHeight,
                        width: menuTileWidth,
                        leading: Icon(Icons.share),
                        title: Text("Share Dream Buddy")
                    ),
                    SizedBox(height: 10),
                    CustomListTile(
                        height: menuTileHeight,
                        width: menuTileWidth,
                        leading: Icon(Icons.help_outline_outlined),
                        title: Text("Help & feedback")
                    ),
                    SizedBox(height: 10),
                    CustomListTile(
                        height: menuTileHeight,
                        width: menuTileWidth,
                        leading: Icon(Icons.star_border),
                        title: Text("Subscription")
                    ),
                    SizedBox(height: 10),
                    CustomListTile(
                        height: menuTileHeight,
                        width: menuTileWidth,
                        leading: Icon(Icons.logout),
                        title: Text("Logout")
                    ),
                    SizedBox(height: 10),
                  ],
                )
              )
            ),

          ],
        ),
      )
    );
  }
}
