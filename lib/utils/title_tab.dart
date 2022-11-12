import 'package:flutter/cupertino.dart';
import 'package:flutter_cv/utils/app_styles.dart';

class TitleTab extends StatelessWidget {
  final String titleText;
  final double rightIndent;
  
  const TitleTab({super.key, required this.titleText, required this.rightIndent});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          width: rightIndent,
          decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
          ),
          child: Row(
            children: [
              Text(
                titleText,
                textAlign: TextAlign.center,
                style: Styles.h1Style,
              ),
            ],
          ),
        )
      ],
    );
  }
}