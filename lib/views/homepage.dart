// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:koalodownloader/specs/text.dart';
import 'package:koalodownloader/specs/text_field.dart';

import '../specs/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/pagedesign.png",
            ),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              Gap(100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 150, left: 20),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white10
                            .withOpacity(0.5), // Adjust the opacity as needed
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.3), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset:
                                Offset(0, 3), // Offset in the x, y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "assets/shakebell.gif",
                        ),
                      )),
                    ),
                  ),
                  Gap(20),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        "assets/koalalogo.png",
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, right: 230),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('|Mp3 to 8K',
                        textStyle: textStylespoppins(30,
                            colorMap['textYellow'] as Color, FontWeight.w800)),
                    TypewriterAnimatedText('|Fast Downloads',
                        textStyle: textStylespoppins(30,
                            colorMap['textOrange'] as Color, FontWeight.w800)),
                    TypewriterAnimatedText('|Very Reliable',
                        textStyle: textStylespoppins(30,
                            colorMap['textGreen'] as Color, FontWeight.w800)),
                    TypewriterAnimatedText('|Accuracy',
                        textStyle: textStylespoppins(
                            30, Colors.black, FontWeight.w800)),
                  ],
                ),
              ),
              Form(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Paste video url',
                      ),
                    ),
                  ),
                  TextFormField(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
