import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cv/screens/about_me.dart';
import 'package:flutter_cv/screens/education_screen.dart';
import 'package:flutter_cv/screens/experience_screen.dart';
import 'package:flutter_cv/screens/platforms_screen.dart';
import 'package:flutter_cv/utils/app_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  launchUrl(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch";
    }
  }
  
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions =<Widget>  [
    const AboutPage(),
    const EducationScreen(),
    const PlatformScreen(),
    const ExperienceScreen(),
  ];

  static final List<Widget> _titleOptions =<Widget>  [
    Text('About Me', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700,),),
    Text('Education', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700,),),
    Text('Platforms', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700,),),
    Text('Experience', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700,),),
  ];

  void _onItemTapped (int index)  {
    setState(() {
    _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: _titleOptions[_selectedIndex],
        titleSpacing: 28,
        toolbarHeight: 36,
        backgroundColor: Styles.primaryColor,
        shadowColor: Styles.p2Color,

        actions: [
          IconButton(onPressed: () {
            String url = 'https://facebook.com/sonw.vh/';
            launchUrl(url);
          }, icon: const Icon(FontAwesomeIcons.facebook), color: Styles.bgColor, iconSize: 18,),

          IconButton(onPressed: () {
            String url = 'https://www.linkedin.com/in/sonw-vh/';
            launchUrl(url);
          }, icon: const Icon(FontAwesomeIcons.linkedin), color: Styles.bgColor, iconSize: 18,),
          
          IconButton(onPressed: () {
            String url = 'https://github.com/sonw-vh';
            launchUrl(url);
          }, icon: const Icon(FontAwesomeIcons.github), color: Styles.bgColor, iconSize: 18,),

          IconButton(onPressed: () {
            String url = 'https://g.dev/sonw-day';
            launchUrl(url);
          }, icon: const Icon(FontAwesomeIcons.dev), color: Styles.bgColor, iconSize: 18,),
        ],
      ),

      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        onTap: _onItemTapped,
        height: 60,
        
        color: Styles.primaryColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: const Duration(milliseconds: 500),

        items: const [
          Icon(Icons.contact_page, color: Colors.white, size: 18, semanticLabel: 'About Me',),
          Icon(Icons.school, color: Colors.white, size: 18, semanticLabel: 'Education',),
          Icon(Icons.developer_board, color: Colors.white, size: 18, semanticLabel: 'Platforms',),
          Icon(Icons.work, color: Colors.white, size: 18, semanticLabel: 'Experience',),
        ],
      ),
    );
  }
}