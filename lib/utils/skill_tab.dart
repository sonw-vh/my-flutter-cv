import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillTab extends StatelessWidget {
  final String skillTitle;
  final double tabWidth;
  const SkillTab({super.key, required this.skillTitle, required this.tabWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: tabWidth,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(90))
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          skillTitle,
          style: GoogleFonts.josefinSans(color: Styles.bgColor, fontSize: 14, fontWeight: FontWeight.w700,),
        ),
      )
    );
  }
}