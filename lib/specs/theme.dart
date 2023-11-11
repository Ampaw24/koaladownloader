import 'package:flutter/material.dart';
import 'package:koalodownloader/specs/color.dart';

import 'colors.dart';
import 'styles.dart';

ThemeData theme() {
  return ThemeData(
    useMaterial3: true,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: h4Black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        side: BorderSide(color: GREY),
      ),
    ),
    scaffoldBackgroundColor: WHITE,
    primaryColor: WHITE,
    disabledColor: ASHDEEP,
    appBarTheme: AppBarTheme(
      backgroundColor: WHITE,
      elevation: .0,
      centerTitle: true,
      shadowColor: WHITE,
      iconTheme: IconThemeData(color: WHITE),
      actionsIconTheme: IconThemeData(color: WHITE),
      titleTextStyle: h2BlackBold,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: PRIMARYCOLOR,
      foregroundColor: BLACK,
    ),
  );
}

ThemeData datePickerTheme() {
  return ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(primary: PRIMARYCOLOR),
  );
}
