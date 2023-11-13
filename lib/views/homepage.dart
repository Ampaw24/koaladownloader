// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, missing_required_param

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:koalodownloader/provider/dropdownprovider.dart';
import 'package:koalodownloader/specs/drop_down_widget.dart';
import 'package:koalodownloader/specs/text.dart';
import 'package:koalodownloader/specs/text_field.dart';
import 'package:provider/provider.dart';

import '../specs/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedValue = 'Option 1';
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
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
        child: SingleChildScrollView(
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
                margin: const EdgeInsets.only(top: 80, right: 100),
                child: AnimatedTextKit(
                  repeatForever: true,
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
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: textFormField(
                          cursorColor: Colors.black,
                          prefixIcon: Ionicons.link,
                          hintText: "Video Url",
                          borderWidth: 2,
                          borderRadius: 10,
                          labelText: "Video Url",
                          labelStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                          ),
                          keyboardType: TextInputType.multiline,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      margin: const EdgeInsets.only(right: 30),
                      child: DropdownMenu<String>(
                        label: Text("Select Video Format"),
                        width: MediaQuery.of(context).size.width * 0.84,
                        initialSelection:
                            context.read<UIProvider>().selectedItem,
                        onSelected: (String? newValue) {
                          // This is called when the user selects an item.
                          setState(() {
                            context.read<UIProvider>().selectedItem =
                                newValue as String;
                          });
                        },
                        dropdownMenuEntries: context
                            .read<UIProvider>()
                            .dropDownContent
                            .map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    ),
                    ContainerButton(
                        btnColor: colorMap['textGreen'] as Color,
                        btnIcon: Ionicons.download,
                        btnName: "Download"),
                    Gap(10),
                    ContainerButton(
                        btnColor: colorMap['textRed'] as Color,
                        btnIcon: Ionicons.close_sharp,
                        btnName: "Clear"),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  final Color btnColor;
  final String btnName;
  final IconData btnIcon;

  const ContainerButton(
      {super.key,
      required this.btnColor,
      required this.btnName,
      required this.btnIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: MediaQuery.of(context).size.width * 0.84,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              btnIcon,
              color: Colors.white,
              weight: 20,
            ),
            Gap(10),
            Text(
              btnName,
              style: textStylespoppins(17, Colors.white, FontWeight.bold),
            )
          ],
        ));
  }
}
