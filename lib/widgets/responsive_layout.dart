import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mainBody;
  final Widget overflowScreen;
  const ResponsiveLayout({super.key, required this.mainBody, required this.overflowScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mainBody;
        } else {
          return overflowScreen;
        }
      },
    );
  }
}