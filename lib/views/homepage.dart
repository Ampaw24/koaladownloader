// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          color: Colors.black.withOpacity(0.3), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: Offset(0, 3), // Offset in the x, y direction
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20)),
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
            )
          ],
        ),
      ),
    );
  }
}
