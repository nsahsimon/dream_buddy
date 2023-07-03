import 'package:flutter/material.dart';
class StarTracker extends StatelessWidget {
  const StarTracker({
    super.key,
    required this.starCount,
  });

  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("$starCount"),
        Icon(Icons.star, color: Color(0xffED9B40))
      ],
    );
  }
}