import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:flutter_cv/utils/title_bar_light.dart';
import 'package:flutter_cv/utils/title_tab.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [

              const Gap(18),
              const TitleTab(titleText: 'ACADEMIC', rightIndent: 160),

              const Gap(12),
              const LightTitleBar(titleText: 'Jul 2017 - Sep 2020', rightIndent: 190),

              const Gap(7),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 2),
                    child: BorderedText(strokeWidth: 2.5, strokeColor: Styles.primaryColor, child: Text(
                        'Le Quy Don',
                        style: GoogleFonts.josefinSans(
                          fontSize: 45,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Styles.bgColor,
                        ),
                      )
                    ),
                  ),
                ],
              ),
              

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 1),
                    child: Text(
                      'Highschool for the Gifted',
                      style: Styles.h3Style,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),

              const Gap(10),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage('assets/images/edu_lqd.png'), fit: BoxFit.fitWidth),
                ),
              ),

              const Gap(12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GPA: ',
                            style: GoogleFonts.josefinSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Styles.bgColor,
                            ),
                          ),
                          
                          const Gap(2),
                          Text( 
                            '3.5',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.josefinSans(
                              fontSize: 60,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Styles.bgColor
                            ),
                          )
                        ],
                      ),
                    ),

                    const Gap(12),
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 175,
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        border: Border.all(color: Styles.primaryColor),
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BorderedText(
                            strokeColor: Styles.primaryColor,
                            strokeWidth: 2,
                            child: Text(
                              'Major: ',
                              style: GoogleFonts.josefinSans(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700,
                                color: Styles.bgColor,
                              ),
                            ),
                          ),
                          const Gap(7),
                          Text( 
                            'Physics',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.josefinSans(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Styles.primaryColor
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const Gap(36),
              const LightTitleBar(titleText: 'Oct 2020 - Sep 2024', rightIndent: 200),

              const Gap(7),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 2),
                    child: BorderedText(strokeWidth: 2.5, strokeColor: Styles.primaryColor, child: Text(
                        'FPT University',
                        style: GoogleFonts.josefinSans(
                          fontSize: 45,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          color: Styles.bgColor,
                        ),
                      )
                    ),
                  ),
                ],
              ),
              

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 1),
                    child: Text(
                      'Campus Da Nang City',
                      style: Styles.h3Style,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),

              const Gap(10),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage('assets/images/edu_fpt.png'), fit: BoxFit.fitWidth),
                ),
              ),

              const Gap(12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GPA: ',
                            style: GoogleFonts.josefinSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Styles.bgColor,
                            ),
                          ),
                          
                          const Gap(2),
                          Text( 
                            '3.5',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.josefinSans(
                              fontSize: 60,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Styles.bgColor
                            ),
                          )
                        ],
                      ),
                    ),

                    const Gap(12),
                    Container(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 175,
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        border: Border.all(color: Styles.primaryColor),
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BorderedText(
                            strokeColor: Styles.primaryColor,
                            strokeWidth: 2,
                            child: Text(
                              'Major: ',
                              style: GoogleFonts.josefinSans(
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700,
                                color: Styles.bgColor,
                              ),
                            ),
                          ),
                          const Gap(7),
                          Text( 
                            'Information Assurance',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.josefinSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Styles.primaryColor
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const Gap(20),
            ],
          ),
        ],
      ),
    );
  }
}