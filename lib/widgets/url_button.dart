import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlButton extends StatelessWidget {
  final String buttonTitle;
  final String urlString;
  final double buttonWidth;
  final Color buttonColor;
  final Color borderColor;
  
  const UrlButton({super.key, required this.buttonTitle, required this.buttonColor, required this.borderColor, required this.buttonWidth, required this.urlString});

  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(90)),
          color: buttonColor,
          border: Border.all(color: borderColor)
        ),
        child: ElevatedButton(
          onPressed: () {
            String url = urlString;
            launchUrl(url);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            foregroundColor: buttonColor,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(90)),
            )
          ),
          child: Text(
            buttonTitle,
            style:  GoogleFonts.josefinSans(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }
}