import 'package:flutter/cupertino.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectTab extends StatelessWidget {
  final String titleText;
  final String shortText;
  final String desText;
  const ProjectTab({super.key, required this.titleText, required this.shortText, required this.desText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                titleText,
                style: GoogleFonts.abhayaLibre(
                  color: Styles.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Text(
              shortText,
              style: GoogleFonts.abhayaLibre(
                color: Styles.textColor,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),

        const Gap(3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            desText,
            textAlign: TextAlign.justify,
            style: Styles.textStyle,
          ),
        ),
      ],
    );
  }
}