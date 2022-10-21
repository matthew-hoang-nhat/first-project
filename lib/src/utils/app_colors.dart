import 'package:flutter/material.dart';

// Colors constant
class AppColors {
  static const Map<int, Color> color = {
    50: Color.fromRGBO(255, 150, 146, .1),
    100: Color.fromRGBO(255, 150, 146, .2),
    200: Color.fromRGBO(255, 150, 146, .3),
    300: Color.fromRGBO(255, 150, 146, .4),
    400: Color.fromRGBO(255, 150, 146, .5),
    500: Color.fromRGBO(255, 150, 146, .6),
    600: Color.fromRGBO(255, 150, 146, .7),
    700: Color.fromRGBO(255, 150, 146, .8),
    800: Color.fromRGBO(255, 150, 146, .9),
    900: Color.fromRGBO(255, 150, 146, 1.0),
  };

  // Main color
  static const MaterialColor primarySwatch = MaterialColor(0xFFf93922, color);

  static const Color colorPrimary = Color(0xFFFA9692);
  static const Color colorBackground = Color(0xffffffff);
  static const Color colorText = Color(0xff292929);
  static const Color colorTextSecond = Color(0xff000000);
  static const Color colorTextHint = Color(0xff999999);
  static const Color colorBorder = Color(0xffE0E0E0);
}
