import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final String urlString;
  final IconData iconType;
  
  const SocialButton({super.key, required this.urlString, required this.iconType});
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
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        color: Styles.primaryColor
      ),
      child: Align(
        alignment: Alignment.center,
        child: IconButton(onPressed: () {
          String url = urlString; 
          launchUrl(url);
        }, icon: Icon(iconType, color: Styles.bgColor, size: 12,), splashColor: Colors.transparent),
      )
    );
  }
}