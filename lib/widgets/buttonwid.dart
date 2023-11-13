
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:koalodownloader/specs/text.dart';

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
