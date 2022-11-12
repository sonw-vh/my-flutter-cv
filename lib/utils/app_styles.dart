import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = const Color.fromARGB(255, 163, 191, 214);

class Styles {
  static Color bgColor = const Color.fromARGB(255, 250, 253, 255);
  static Color primaryColor = primary;
  
  static Color p1Color = const Color.fromARGB(255, 141, 181, 214);
  static Color p2Color = const Color.fromARGB(255, 214, 184, 211);
  static Color p3Color = const Color.fromARGB(255, 214, 186, 141);
  static Color p4Color = const Color.fromARGB(255, 168, 214, 152);
  static Color p5Color = const Color.fromARGB(255, 205, 211, 214);

  static Color textColor = const Color.fromARGB(255, 80, 89, 89);
  static TextStyle textStyle = GoogleFonts.abhayaLibre(color: textColor, fontSize: 16, fontWeight: FontWeight.w300,);
  static TextStyle h1Style = GoogleFonts.josefinSans(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700,);
  static TextStyle h2Style = GoogleFonts.josefinSans(color: textColor, fontSize: 16, fontWeight: FontWeight.w400,);
  static TextStyle h3Style = GoogleFonts.josefinSans(color: primaryColor, fontSize: 21, fontWeight: FontWeight.w700,);
}