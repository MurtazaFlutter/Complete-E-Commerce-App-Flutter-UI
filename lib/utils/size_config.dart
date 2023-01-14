import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Get the proportionate height as per screen size
double getProporionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  //812 is the layout Height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

double getProporionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  //375 is the layout width that designer use
  return (inputWidth / 375) * screenWidth;
}
