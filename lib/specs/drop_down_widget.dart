import 'package:flutter/material.dart';
import 'package:koalodownloader/specs/color.dart';
import '../specs/colors.dart';

Widget dropDownWidget({
  required BuildContext context,
  required String dropdownValueSelected,
  required void Function(String value) onDropDown,
  required List<String> dropDownList,
  double divideWith = .35,
  Color dropDownBackground = GREY,
  double? height,
  bool showBorder = false,
  Widget? icon,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * divideWith,
    height: height ?? 50,
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: dropDownBackground,
      borderRadius: BorderRadius.circular(5),
      border: showBorder ? Border.all() : null,
      // border: Border.all(),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: icon,
        isExpanded: true,
        borderRadius: BorderRadius.circular(5),
        value: dropdownValueSelected,
        onChanged: (String? newValue) => onDropDown(newValue!),
        items: dropDownList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ),
  );
}
