import 'package:flutter/material.dart';
import 'package:reddit_clone/utility/app_logger.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    log.i('SizeConfig initiliazed');
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.025
        : screenWidth * 0.025;
  }

  double screenHeightPercentage(BuildContext context,
          {double percentage = 1}) =>
      screenHeight * percentage;
  double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
      screenWidth * percentage;
}
