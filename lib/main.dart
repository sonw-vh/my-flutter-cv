import 'package:flutter/material.dart';
import 'package:flutter_cv/screens/home_screen.dart';
import 'package:flutter_cv/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My CV',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const HomeScreen(),
    );
  }
}