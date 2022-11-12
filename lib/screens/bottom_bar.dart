import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cv/screens/about_me.dart';
import 'package:flutter_cv/screens/education_screen.dart';
import 'package:flutter_cv/screens/experience_screen.dart';
import 'package:flutter_cv/screens/platforms_screen.dart';
import 'package:flutter_cv/utils/app_styles.dart';
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
    Text('About Me', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700,),),
    Text('Education', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700,),),
    Text('Platforms', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700,),),
    Text('Experience', style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700,),),
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
        centerTitle: true,
        toolbarHeight: 36,
        backgroundColor: Styles.primaryColor,
        shadowColor: Styles.p2Color,
        leading: IconButton(onPressed: () {
            String url = 'https://drive.google.com/file/d/1GcXGJze_z2R4mpCIovWVQta_96xnexK4/view?usp=share_link';
            launchUrl(url);
          }, icon: const Icon(Icons.folder), color: Styles.bgColor, iconSize: 21,
        ),

        actions: [
          IconButton(onPressed: () {
            String url = 'https://drive.google.com/file/d/1D_aEfo1Xvk2yLNHNOFYdMCCSrwgHEmdz/view?usp=share_link';
            launchUrl(url);
          }, icon: const Icon(Icons.download), color: Styles.bgColor, iconSize: 21,)
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