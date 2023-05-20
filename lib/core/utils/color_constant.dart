import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#737272');

  static Color gray400 = fromHex('#bcbaba');

  static Color gray500 = fromHex('#939393');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color red700 = fromHex('#af4949');

  static Color blueGray400 = fromHex('#888888');

  static Color pink900 = fromHex('#6d1717');

  static Color gray900 = fromHex('#171717');

  static Color green900 = fromHex('#1e6d17');

  static Color red5001 = fromHex('#fff2f2');

  static Color black9003f = fromHex('#3f000000');

  static Color gray200 = fromHex('#e8e8e8');

  static Color gray300 = fromHex('#e3e3e3');

  static Color gray100 = fromHex('#f4f4f4');

  static Color red50 = fromHex('#fff3f3');

  static Color gray10002 = fromHex('#faf3f3');

  static Color black90001 = fromHex('#010101');

  static Color gray40001 = fromHex('#b0b0b0');

  static Color black900 = fromHex('#000000');

  static Color gray10001 = fromHex('#f9f3f3');

  static Color blueGray900 = fromHex('#323232');

  static Color cyan900 = fromHex('#00466e');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
