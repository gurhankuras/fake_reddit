import 'package:flutter/material.dart';

import '../../utility/app_logger.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double devicePixelRatio;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    log.i('SizeConfig initiliazed');
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    devicePixelRatio = _mediaQueryData.devicePixelRatio;
    orientation = _mediaQueryData.orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.025
        : screenWidth * 0.025;
  }

  static bool isKeyboardHidden(BuildContext context) =>
      MediaQuery.of(context).viewInsets.bottom == 0;

  static double screenHeightPercentage([double percentage = 1]) =>
      screenHeight * percentage / 100;
  static double screenWidthPercentage([double percentage = 1]) =>
      screenWidth * percentage / 100;
}
