import 'package:flutter/material.dart';

class BasicColors {
  static const Color darkGreen = Color(0xFF43BE8D);
  static const Color lightGreen = Color(0xFF0DE18C);
  static const Color darkGrey = Color(0xFF616161);
  static const Color lightGrey = Color(0xFFF6F6F6);
  static const Color grey = Color(0xFFCCCCCC);
  static const Color white = Color(0xFFFFFFFF);
  static const Color shadow = Color(0x485F5526);
  static const Color greyOutlineBorder = Color(0xFFE0E0E0);

  static const MaterialColor DarkGreenPallete =
      MaterialColor(_darkGreenValue, <int, Color>{
    50: Color(0xFFE8F7F1),
    100: Color(0xFFC7ECDD),
    200: Color(0xFFA1DFC6),
    300: Color(0xFF7BD2AF),
    400: Color(0xFF5FC89E),
    500: Color(_darkGreenValue),
    600: Color(0xFF3DB885),
    700: Color(0xFF34AF7A),
    800: Color(0xFF2CA770),
    900: Color(0xFF1E995D),
  });

  static const int _darkGreenValue = 0xFF43BE8D;
}
