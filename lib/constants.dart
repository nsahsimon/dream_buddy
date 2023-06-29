import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const Color kBgColor = Color(0xFFE8E9F3);
const Color kBodyTextColor = Color(0xFF747A81);
const MaterialColor kAppColor = MaterialColor(
  0xFF6667AB,
  <int, Color>{
    50: Color(0xFFE8E9F4),
    100: Color(0xFFC6C8E3),
    200: Color(0xFFA4A6D2),
    300: Color(0xFF8284C1),
    400: Color(0xFF6C6FAF),
    500: Color(0xFF6667AB), // Primary color
    600: Color(0xFF5E5F99),
    700: Color(0xFF545587),
    800: Color(0xFF4B4C75),
    900: Color(0xFF3B3D52),
  },
);
TextStyle kHeaderTextStyle = GoogleFonts.comicNeue(
    color: kAppColor, fontWeight: FontWeight.bold, fontSize: 25, height: 1.5
);
// const TextStyle kHeaderTextStyle = TextStyle(color: kAppColor, fontWeight: FontWeight.bold, fontSize: 25, height: 1.5 , fontFamily: GoogleFonts);
TextStyle kBodyTextStyle = GoogleFonts.roboto(
  color:kBodyTextColor, height: 1.5
);
const int kLineSpacing = 10;

const int kPercentStep = 5;