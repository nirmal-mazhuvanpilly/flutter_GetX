import 'package:flutter/material.dart';

class Utilities {
  static const SizedBox k10Width = SizedBox(width: 10);
  static const SizedBox k25Width = SizedBox(width: 25);
  static const EdgeInsetsGeometry k10Padding = EdgeInsets.all(10);

  static final BorderRadiusGeometry k10CircularRadius =
      BorderRadius.circular(10);

  static const TextStyle kWhiteTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
