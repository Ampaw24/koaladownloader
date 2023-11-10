// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:koalodownloader/specs/colors.dart';
import 'package:koalodownloader/views/homepage.dart';
import 'package:line_icons/line_icons.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

final List<String> assetName = [
  'assets/orange.png',
  'assets/blue.png',
  'assets/black.png',
  'assets/p2black.png',
  'assets/p2blue.png',
];
int _selectedIndex = 0;
const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
const List<Widget> _widgetOptions = <Widget>[
  HomePage(),
  Text(
    'Likes',
    style: optionStyle,
  ),
  Text(
    'Search',
    style: optionStyle,
  ),
  Text(
    'Profile',
    style: optionStyle,
  ),
];

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: colorMap['designblack'],
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.white,
                tabs: [
                  GButton(
                    icon: Ionicons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Ionicons.settings_sharp,
                    text: 'Settings',
                  ),
                  GButton(
                    icon: Ionicons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Ionicons.notifications,
                    text: 'Alerts',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: _widgetOptions.elementAt(_selectedIndex));
  }
}
