import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kTextStyle(double size, [Color? color]) => GoogleFonts.lato(
      fontSize: size,
      color: color ?? Colors.black,
    );
