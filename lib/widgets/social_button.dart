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
    return SizedBox(
      width: 24,
      height: 24,
      child: ElevatedButton(
        onPressed: () {
          String url = urlString; 
          launchUrl(url);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Styles.bgColor,
          foregroundColor: Styles.bgColor,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconType,
              color: Styles.primaryColor,
              size: 7,
            ),
          ],
        ),
      ),
    );
  }
}