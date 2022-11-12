import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:flutter_cv/utils/proj_tab.dart';
import 'package:flutter_cv/utils/title_bar_light.dart';
import 'package:flutter_cv/utils/title_tab.dart';
import 'package:flutter_cv/widgets/url_button.dart';
import 'package:gap/gap.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              const Gap(20),
              const TitleTab(titleText: 'ACTIVITIES', rightIndent: 160),

              const Gap(18),
              const LightTitleBar(titleText: 'Google Developer Student Clubs', rightIndent: 295),

              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'I have been participated in GDSC (university based community groups for students interested in Google Developers technologies) since July 2021 as a core member, contributed in human managing, building workshops and training program in multiple fields: mobile/website develop, design, marketing, leadership, etc. And in September 2022, after some interviews with the Googlers, I became one of 26 GDSC Vietnam Leads in the period of 2022 - 2023.',
                  textAlign: TextAlign.justify,
                  style: Styles.textStyle,
                ),
              ),

              const Gap(12),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage('assets/images/gdsc.png'), fit: BoxFit.fitWidth),
                ),
              ),

              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UrlButton(buttonTitle: 'View certificate', buttonColor: Styles.bgColor, borderColor: Styles.primaryColor, buttonWidth: 165, urlString: 'https://drive.google.com/file/d/1o5I5EgIJ1rTy6X6XBLFdxE5uV9WB93GN/view?usp=share_link'),
                  const Gap(12),
                  UrlButton(buttonTitle: 'View article', buttonColor: Styles.primaryColor, borderColor: Styles.bgColor, buttonWidth: 135, urlString: 'https://www.facebook.com/dscinvietnam/posts/pfbid02gfLWnTG7yrMFeX5E9jPuAfMyyLCTb7WHZatGcGspkmseBUG4SW5PnS1kGxkDFs1hl'),
                  
                  
                ],
              ),
              
              const Gap(18),
              const LightTitleBar(titleText: 'UniHack 2022', rightIndent: 165),

              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'UniHack 2022 is a hackathon for students from the universities and colleges around Central Region to develop a solution for smart education. Our solution is to build a learn-on-demand platform that can auto-generate an online learning program from the description of the product that users want to make. We achieved the TOP 10 position in this competition.',
                  textAlign: TextAlign.justify,
                  style: Styles.textStyle,
                ),
              ),

              const Gap(12),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage('assets/images/unihack.png'), fit: BoxFit.fitWidth),
                ),
              ),

              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UrlButton(buttonTitle: 'View certificate', buttonColor: Styles.bgColor, borderColor: Styles.primaryColor, buttonWidth: 165, urlString: 'https://drive.google.com/file/d/18t11nRti4VZiOGq08gmI1XUNVTD8dKJV/view?usp=share_link'),
                  const Gap(12),
                  UrlButton(buttonTitle: 'View product', buttonColor: Styles.primaryColor, borderColor: Styles.bgColor, buttonWidth: 145, urlString: 'https://github.com/Ming-doan/LonDe'),
                  
                  
                ],
              ),
              
              const Gap(18),
              const LightTitleBar(titleText: 'ResFes 2022', rightIndent: 160),

              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Research Festival 2022 is a scientific research competition for students in FPT Education. What we did is to have an overview picture of Tokenomics in Vietnam, predict the benefits and drawbacks of adopting it, then find out a solution to the difficulties for Vietnamese citizens approaching Tokenomics.',
                  textAlign: TextAlign.justify,
                  style: Styles.textStyle,
                ),
              ),

              const Gap(12),
              Container(
                height: 125,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(image: AssetImage('assets/images/resfes.png'), fit: BoxFit.fitWidth),
                ),
              ),

              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UrlButton(buttonTitle: 'View research', buttonColor: Styles.bgColor, borderColor: Styles.primaryColor, buttonWidth: 165, urlString: 'https://drive.google.com/drive/folders/1aDffN_DZ7piWJ5UyUVXF-_ZMKjZ27Udb?usp=share_link'),
                ],
              ),
              
              const Gap(20),
              const TitleTab(titleText: 'PROJECTS', rightIndent: 150),

              const Gap(15),
              const LightTitleBar(titleText: '2017 - 2019', rightIndent: 140),

              const Gap(15),
              const ProjectTab(titleText: '1. HeartBeat: ', shortText: 'Feel the beat from your heart.', desText: 'A Unity-based game provides people drum crash courses with a complete music theory system.'),

              const Gap(15),
              const ProjectTab(titleText: '2. Womanslator: ', shortText: 'Know your woman.', desText: 'An Android app that translates women’ words into their true feeling and offers some solutions for the problem.'),
              
              const Gap(15),
              const ProjectTab(titleText: '3. Automatic Watering System: ', shortText: 'Smart garden.', desText: 'An IoT project using Arduino platform to take care of gardens without human’s hands.'),

              const Gap(20),
              const LightTitleBar(titleText: '2021 - present', rightIndent: 175),

              const Gap(15),
              const ProjectTab(titleText: '4. HR Manager: ', shortText: 'An internal app from GDSC - FPTU.', desText: 'A mobile app by Flutter and Firebase to manage members’ information, resources and notification within the club.'),

              const Gap(20)
            ],
          )
        ],
      ),
    );
  }
}