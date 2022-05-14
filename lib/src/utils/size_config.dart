import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static const double defaultScreenHeight = 900.0;
  static const double defaultScreenWidth = 1200.0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }

  static double scaleY(double val, {double? minScreenHeight}) {
    final double size = screenHeight! >= (minScreenHeight ?? defaultScreenHeight)
        ? screenHeight! * val
        : (minScreenHeight ?? defaultScreenHeight) * val;
    return size > 0 ? size : 5.0;
  }

  static double scaleX(double val, {double? minScreenWidth}) {
    final double size = screenWidth! >= (minScreenWidth ?? defaultScreenWidth)
        ? screenWidth! * val
        : (minScreenWidth ?? defaultScreenWidth) * val;
    return size > 0 ? size : 5.0;
  }

  static double linearProgressionX(double a, double d, double minScreenWidth) {
    final double spacing =
        a + (((screenWidth! - minScreenWidth) / (a + d)) * d);
    return spacing > 0 ? spacing : 5.0;
  }
}
