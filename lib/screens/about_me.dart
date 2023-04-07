import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:flutter_cv/utils/skill_tab.dart';
import 'package:flutter_cv/utils/title_bar_light.dart';
import 'package:flutter_cv/utils/title_tab.dart';
import 'package:flutter_cv/widgets/icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage('assets/images/avatar.png')),
                      ),
                    ),

                    Column(
                      children: [
                        const Gap(15),
                        Text(
                          'Võ Hoàng Sơn',
                          style: GoogleFonts.josefinSans(
                            color: Styles.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        
                        const Gap(3),
                        Text(
                          'IT - Marketing - Event',
                          style: GoogleFonts.abhayaLibre(
                            color: Styles.textColor,
                            fontSize: 12.5,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 2.5,
                          ),
                        ),

                        const Gap(7),
                        Row(
                          children: [
                            UrlIconButton(iconType: FontAwesomeIcons.android, buttonColor: Styles.bgColor, borderColor: Styles.primaryColor, buttonWidth: 81, urlString: 'https://drive.google.com/file/d/1t0GKJNW7_jKtAE6uWRTCPgNNv1IyXL-L/view?usp=share_link'),
                            const Gap(3),
                            UrlIconButton(iconType: FontAwesomeIcons.googleDrive, buttonColor: Styles.bgColor, borderColor: Styles.primaryColor, buttonWidth: 81, urlString: 'https://drive.google.com/file/d/1A3jBx9RL_TZTPxrrcw_cMKnsMgl7nnHY/view?usp=share_link'),
                          ],
                        ),

                        const Gap(7),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.phone, size: 14, color: Styles.primaryColor,),
                                Text(
                                  ' +84 918 365 901',
                                  style: GoogleFonts.abhayaLibre(
                                    color: Styles.textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.solidEnvelope, size: 14, color: Styles.primaryColor,),
                                Text(
                                  ' sonw.vh@gmail.com',
                                  style: GoogleFonts.abhayaLibre(
                                    color: Styles.textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),

              const Gap(20),
              const TitleTab(titleText: 'ABOUT ME', rightIndent: 140),

              const Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'I started coding when I first had my laptop at highschool, beginning with simple games on Unity then proper Android programs and mobile apps. I still got my passion on IT industry and non-stop learning everyday.',
                  textAlign: TextAlign.justify,
                  style: Styles.textStyle,
                ),
              ),

              const Gap(10),
              const LightTitleBar(titleText: 'Have skills in', rightIndent: 150),

              const Gap(7),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 7,
                children: const [
                  SkillTab(skillTitle: 'Mobile Development', tabWidth: 175),
                  SkillTab(skillTitle: 'UX/UI', tabWidth: 75),
                  SkillTab(skillTitle: 'Penetration Testing', tabWidth: 165),
                  SkillTab(skillTitle: 'Internet of Things', tabWidth: 155),
                  SkillTab(skillTitle: 'Graphic Design', tabWidth: 145),
                  SkillTab(skillTitle: 'Project Management', tabWidth: 175),
                  SkillTab(skillTitle: 'Human Resources', tabWidth: 155),
                  SkillTab(skillTitle: 'Content Creator', tabWidth: 145),
                ],
              ),

              const Gap(15),
              const LightTitleBar(titleText: 'Willing to learn more', rightIndent: 210),

              const Gap(7),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 7,
                children: const [
                  SkillTab(skillTitle: 'Android Security', tabWidth: 145),
                  SkillTab(skillTitle: 'DevOps', tabWidth: 85),
                  SkillTab(skillTitle: 'Mobile Forensics', tabWidth: 145),
                ],
              ),

              const Gap(15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 40,
                decoration: BoxDecoration(
                  color: Styles.bgColor,
                  border: Border.all(color: Styles.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BorderedText(
                      strokeColor: Styles.primaryColor,
                      strokeWidth: 2,
                      child: Text(
                        'Future career: ',
                        style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          color: Styles.bgColor,
                        letterSpacing: 1,
                        ),
                      ),
                    ),
                    const Gap(7),
                    Text( 
                      'Project Manager',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.josefinSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Styles.primaryColor
                      ),
                    )
                  ],
                ),
              ),

              const Gap(20),
              const TitleTab(titleText: 'TESTIMONIAL', rightIndent: 180),

              const Gap(7),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/review2.png'), fit: BoxFit.fitHeight),
                          ),
                        ),

                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BorderedText(
                              strokeWidth: 2,
                              strokeColor: Styles.primaryColor,
                              child: Text(
                                'IT Lecturer',
                                style: GoogleFonts.josefinSans(
                                  color: Styles.bgColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Mr. ',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  'Nguyen Quoc Long',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                            
                            const Gap(5),
                            Text(
                              'at FPT University Da Nang',
                              style: GoogleFonts.josefinSans(
                                color: Styles.primaryColor,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                      child: Text(
                        "Despite he doesn't spent all of his attention on classes, he's still doing great job on his field and has a clear vision of his career path. He has a wide knowledge about plenty of aspects in IT industry allowed him to be able to work in different positions. He knows exactly what he's doing.",
                        style: Styles.textStyle,
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),

              const Gap(7),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/review1.png'), fit: BoxFit.fitHeight),
                          ),
                        ),

                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                BorderedText(
                                  strokeWidth: 2,
                                  strokeColor: Styles.primaryColor,
                                  child: Text(
                                    'Chapter Lead',
                                    style: GoogleFonts.josefinSans(
                                      color: Styles.bgColor,
                                      fontSize: 22.5,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),

                                Text(
                                  ' (2021-2022)',
                                  style: GoogleFonts.josefinSans(
                                      color: Styles.primaryColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700
                                    ),
                                )
                              ],
                            ),
                            
                            const Gap(1),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Ms. ',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  'Hoang Ngoc Chau Giang',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                            
                            const Gap(5),
                            Text(
                              'at GDSC - FPTU Da Nang',
                              style: GoogleFonts.josefinSans(
                                color: Styles.primaryColor,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                      child: Text(
                        'For one dot if you mention of Son is he is a type of teammate that is very careful, he might want to push everything into a perfect standard. Also, he is a taciturn person, but know exactly what he is going to speak. Working with Son brings great results since he would take care all even smallest details. Fast is not something related to him, but good must be the one.',
                        style: Styles.textStyle,
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Styles.primaryColor),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/review3.png'), fit: BoxFit.fitHeight),
                          ),
                        ),

                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BorderedText(
                              strokeWidth: 2,
                              strokeColor: Styles.primaryColor,
                              child: Text(
                                'Founder',
                                style: GoogleFonts.josefinSans(
                                  color: Styles.bgColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Mr. ',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                                Text(
                                  'Hoang Kim Phu',
                                  style: GoogleFonts.josefinSans(
                                    color: Styles.textColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            ),
                            
                            const Gap(5),
                            Text(
                              'at FUDA Security Research Club',
                              style: GoogleFonts.josefinSans(
                                color: Styles.primaryColor,
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                      child: Text(
                        'Son is a nice and friendly person, always be open to share whenever people need him for help.',
                        style: Styles.textStyle,
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),

              const Gap(20)
            ],
          ),
        ],
      ),
    );
  }
}