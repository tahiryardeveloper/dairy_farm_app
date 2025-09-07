// main_screen.dart
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:dairy_farm_app/home.dart';
import 'package:dairy_farm_app/profile_nav.dart';
import 'package:dairy_farm_app/setting_navbar.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int myIndex = 1;

  final List<Widget> _screens = [Settingnavbar(), Home(), ProfileNav()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[myIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: myIndex,
        height: 60,
        backgroundColor: Colors.transparent,
        color: Colors.white,
        buttonBackgroundColor: Colors.blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          Icon(Icons.settings, size: 30, color: Colors.black),
          Icon(Icons.home, size: 30, color: Colors.black),
          Icon(Icons.person, size: 30, color: Colors.black),
        ],
      ),
    );
  }
}
