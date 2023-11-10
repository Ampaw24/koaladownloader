// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

final List<String> assetName = [
  'assets/svg/orange.png',
  'assets/svg/blue.png',
  'assets/svg/black.png',
  'assets/svg/p2black.png',
  'assets/svg/p2blue.png',
];

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Positioned(
                child: Container(
                    height: 300,
                    width: 200,
                    child: SvgPicture.asset(assetName[0],
                        semanticsLabel: 'Acme Logo')))
          ],
        ),
      ),
    );
  }
}
