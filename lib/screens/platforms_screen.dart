import 'package:flutter/material.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:flutter_cv/widgets/progress_tab.dart';
import 'package:flutter_cv/utils/title_tab.dart';
import 'package:gap/gap.dart';

class PlatformScreen extends StatelessWidget {
  const PlatformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              const Gap(12),
              const TitleTab(titleText: 'MOBILE', rightIndent: 160),
              
              const Gap(7),
              const ProgressBar(titleText: 'Android Studio', percentText: '80%', percentBar: 0.8),
              const ProgressBar(titleText: 'Flutter', percentText: '75%', percentBar: 0.75),
              
              Divider(
                color: Styles.primaryColor,
                height: 12,
                thickness: 1,
              ),
              
              const Gap(3),
              const TitleTab(titleText: 'UX/UI', rightIndent: 140),
              
              const Gap(7),
              const ProgressBar(titleText: 'Figma', percentText: '70%', percentBar: 0.7),
              const ProgressBar(titleText: 'Photoshop', percentText: '95%', percentBar: 0.95),
              const ProgressBar(titleText: 'Illustrator', percentText: '90%', percentBar: 0.9),

              Divider(
                color: Styles.primaryColor,
                height: 12,
                thickness: 1,
              ),
              
              const Gap(3),
              const TitleTab(titleText: 'DATABASE', rightIndent: 180),
              
              const Gap(7),
              const ProgressBar(titleText: 'Firebase', percentText: '70%', percentBar: 0.7),
              const ProgressBar(titleText: 'MySQL', percentText: '80%', percentBar: 0.8),
              const ProgressBar(titleText: 'MongoDB', percentText: '60%', percentBar: 0.6),

              Divider(
                color: Styles.primaryColor,
                height: 12,
                thickness: 1,
              ),
              
              const Gap(7),
              const TitleTab(titleText: 'GAME', rightIndent: 160),
              
              const Gap(7),
              const ProgressBar(titleText: 'Unity', percentText: '70%', percentBar: 0.7),

              const Gap(20)
            ],
          )
        ],
      ),
    );
  }
}