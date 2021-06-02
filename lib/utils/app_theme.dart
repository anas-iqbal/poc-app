import 'package:flutter/material.dart';

class AppTheme {
  static Color colorPrimary = HexColor("#FF5722");
  static Color colorBackground = HexColor("#FCFBFE");
  static Color colorCard = Colors.white;
  static Color colorAppBarText = Colors.white;
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

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
