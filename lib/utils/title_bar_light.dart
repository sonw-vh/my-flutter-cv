import 'package:flutter/cupertino.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTitleBar extends StatelessWidget {
  final String titleText;
  final double rightIndent;
  const LightTitleBar({super.key, required this.titleText, required this.rightIndent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: rightIndent,
          decoration: BoxDecoration(
            color: Styles.bgColor,
            border: Border.all(color: Styles.primaryColor),
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(15),
            ),
          ),
          child: Row(
            children: [
              Text(
                titleText,
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(color: Styles.primaryColor, fontSize: 16, fontWeight: FontWeight.w700,),
              ),
            ],
          ),
        )
      ],
    );
  }
}