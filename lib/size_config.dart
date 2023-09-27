import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData?.size.height;
    screenWidth = _mediaQueryData?.size.width;
    orientation = _mediaQueryData?.orientation;
  }
}

double getProportionScreenHeight(double height){
  double? screenHeight = SizeConfig.screenHeight;
  return (height/896.0) * screenHeight!;
}

double getProportionScreenWidth(double width){
  double? screenWith = SizeConfig.screenWidth;
  return (width/414.0)*screenWith!;
}