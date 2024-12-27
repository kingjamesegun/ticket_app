import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(0, 0, 83, 106);

class AppStyles {
  // COLORS
  static Color primaryColor = const Color.fromARGB(0, 6, 25, 30);
  static Color textColor = const Color.fromARGB(255, 1, 43, 55);
  static Color bgColor = const Color(0xffeeedf2);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color kakiColor = const Color(0xfff37b67);

// FONTS
  static TextStyle baseTextStyle = TextStyle(fontSize: 16, color: textColor);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w700);
  static TextStyle headLineStyle4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w700);
}
