import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class OverScreen extends StatelessWidget {
  const OverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/over.png'), fit: BoxFit.fitHeight)
              ),
            ),
            const Gap(20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Window layout is unavailable yet',
                  style: GoogleFonts.josefinSans(
                    fontSize: MediaQuery.of(context).size.width * 0.015,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
                const Gap(3),
                Text(
                  'Please pull the border closer',
                  style: GoogleFonts.josefinSans(
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),
                ),
              ],
            ),
            
            LottieBuilder.network('https://assets9.lottiefiles.com/packages/lf20_tuwojxyr.json', alignment: Alignment.topRight, width: MediaQuery.of(context).size.width * 0.15),
          ],
        ),
      )
    );
  }
}