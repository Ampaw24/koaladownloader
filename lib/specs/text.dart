import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyles(double size, Color color, FontWeight fontWeight) {
  return GoogleFonts.roboto(
      color: color, fontSize: size, fontWeight: fontWeight);
}
TextStyle stylishStyles(double size, Color color, FontWeight fontWeight) {
  return GoogleFonts.lato(
      color: color, fontSize: size, fontWeight: fontWeight);
}
TextStyle textStylespoppins(double size, Color color, FontWeight fontWeight) {
  return GoogleFonts.poppins(
      color: color, fontSize: size, fontWeight: fontWeight);
}