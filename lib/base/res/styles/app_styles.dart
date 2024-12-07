import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(0, 0, 83, 106);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 1, 43, 55);
  static Color bgColor = const Color(0xffeeedf2);

  static TextStyle baseTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w700);
}
