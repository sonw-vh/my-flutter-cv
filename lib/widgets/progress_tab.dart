import 'package:flutter/cupertino.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final String titleText;
  final String percentText;
  final double percentBar;
  const ProgressBar({super.key, required this.titleText, required this.percentText, required this.percentBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        color: Styles.bgColor,
        border: Border.all(color: Styles.primaryColor),
        borderRadius: BorderRadius.circular(30),
      ),

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleText,
                style: Styles.h2Style,
                textAlign: TextAlign.left,
              ),

              Text(
                percentText,
                style: Styles.h2Style,
                textAlign: TextAlign.right,
              )
            ],
          ),
          
          const Gap(5),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Styles.primaryColor)
            ),
            child: LinearPercentIndicator(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              animation: true,
              curve: Curves.easeInOut,
              animationDuration: 700,
              barRadius: const Radius.circular(5),
              lineHeight: 10,
              percent: percentBar,
              progressColor: Styles.primaryColor,
              backgroundColor: Styles.bgColor,
            ),
          ),
        ],
      ),
    );
  }
}