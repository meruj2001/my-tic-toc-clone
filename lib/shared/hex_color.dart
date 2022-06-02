import 'package:flutter/material.dart';

class HexColor extends Color {
  static _fromHex(String hex) {
    var hexColor = hex.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return int.parse("0x$hexColor");
    }

    return 0xffffffff;
  }

  HexColor(String hex) : super(_fromHex(hex));
}
