import 'package:flutter/material.dart';

class AppSizes {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockedSizeHorizontal;
  static late double blockedSizeVertical;

  void iniSizes(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    blockedSizeHorizontal = screenWidth / 100;
    blockedSizeVertical = screenHeight / 100;
  }
}
