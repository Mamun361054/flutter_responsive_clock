import 'package:flutter/cupertino.dart';

class SizeConfigTwo{
  static double _screenWidth;
  static double _screenHeight;
  static double blockWidth = 0.0;
  static double blocHeight = 0.0;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints,Orientation orientation){
    if(orientation == Orientation.portrait){
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if(_screenWidth < 450){
        isMobilePortrait = true;
      }
    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }
    blockWidth = _screenWidth / 100;
    blocHeight = _screenHeight / 100;
    print('screen width = $_screenWidth screen height = $_screenHeight');
    print('block width = $blockWidth block height = $blocHeight');
    print('IS portrait $isPortrait');
  }
}