// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koalodownloader/specs/colors.dart';
import 'package:koalodownloader/specs/text.dart';
import 'package:koalodownloader/views/mainview.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigatehome();
    super.initState();
  }

  _navigatehome() async {
    await Future.delayed(
      Duration(milliseconds: 5000),
    );
    () => Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeftWithFade,
              duration: Duration(milliseconds: 600),
              child: MainView(),
              inheritTheme: true,
              ctx: context),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/koalalogo.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 7),
                child: Text(
                  "Koala Downloader",
                  style: stylishStyles(30, Colors.black, FontWeight.w500),
                ),
              ),
            ),
            Gap(10),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Very Reliable',
                    textStyle: textStylespoppins(
                        20, colorMap['textYellow'] as Color, FontWeight.w700)),
                TypewriterAnimatedText('Fast Downloads',
                    textStyle: textStylespoppins(
                        20, colorMap['textOrange'] as Color, FontWeight.w700)),
                TypewriterAnimatedText('Very Reliable',
                    textStyle: textStylespoppins(
                        20, colorMap['textGreen'] as Color, FontWeight.w700)),
                TypewriterAnimatedText('Accuracy',
                    textStyle:
                        textStylespoppins(20, Colors.black, FontWeight.w700)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/loader.gif'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
