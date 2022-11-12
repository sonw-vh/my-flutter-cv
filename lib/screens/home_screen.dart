import 'package:flutter/material.dart';
import 'package:flutter_cv/screens/bottom_bar.dart';
import 'package:flutter_cv/screens/over_screen.dart';
import 'package:flutter_cv/widgets/responsive_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(mainBody: BottomBar(), overflowScreen: OverScreen()),
    );
  }
}