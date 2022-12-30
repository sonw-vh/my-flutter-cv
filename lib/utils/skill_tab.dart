import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillTab extends StatelessWidget {
  final String skillTitle;
  final double tabWidth;
  const SkillTab({super.key, required this.skillTitle, required this.tabWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tabWidth,
      height: 24,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(90)),
          color: Styles.primaryColor,
        ),
        child: ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Styles.primaryColor,
            foregroundColor: Styles.primaryColor,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(90)),
            )
          ),
          child: Text(
            skillTitle,
            style:  GoogleFonts.josefinSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Styles.bgColor,
            ),
          ),
        ),
      ),
    );
  }
}