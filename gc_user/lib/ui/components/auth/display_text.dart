import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayText extends StatelessWidget {
  const DisplayText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.weight = FontWeight.w400,
      this.textColor = Colors.white});

  final String text;
  final double fontSize;
  final FontWeight? weight;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: GoogleFonts.leagueSpartan(
      fontSize: fontSize,
      fontWeight: weight,
      color: textColor
    ));
  }
}
