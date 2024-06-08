import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildPoppinText({
  required String text,
  double? size,
  FontWeight? weight,
  Color? color,
}) =>
    Text(
      text,
      style: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
