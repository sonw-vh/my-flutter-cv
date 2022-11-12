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
    return Container(
      height: 40,
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        color: buttonColor,
        border: Border.all(color: borderColor)
      ),
      child: TextButton(onPressed: () {
        String url = urlString;
        launchUrl(url);
      }, child: Text(
        buttonTitle,
        style: GoogleFonts.josefinSans(color: borderColor, fontSize: 18, fontWeight: FontWeight.w700,),
      )),
    );
  }
}