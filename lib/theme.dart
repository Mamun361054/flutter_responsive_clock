import 'package:flutter/material.dart';
import 'package:flutter_clock/constant.dart';
import 'package:flutter_clock/size_config_two.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData(BuildContext context){
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    accentColor: kAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryLightColor,
    ),
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: kBodyTextColorLight),
    accentIconTheme: IconThemeData(color: kAccentIconLightColor),
    primaryIconTheme: IconThemeData(color: kPrimaryIconLightColor),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      bodyText1: TextStyle(color: kBodyTextColorLight),
      bodyText2: TextStyle(color: kBodyTextColorLight),
      headline1: TextStyle(color: kTitleTextLightColor,fontSize: SizeConfigTwo.blocHeight*5),
      headline2: TextStyle(color: kTitleTextLightColor,fontSize:SizeConfigTwo.blocHeight * 12),
    )
  );
}
ThemeData dartThemeData(BuildContext context){
  return ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: kPrimaryColor,
      accentColor: kAccentDarkColor,
      scaffoldBackgroundColor:Color(0xFF0D0C0E),
      colorScheme: ColorScheme.light(
        secondary: kSecondaryDarkColor,
        surface: kSurfaceDarkColor,
      ),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: IconThemeData(color: kBodyTextColorDark),
      accentIconTheme: IconThemeData(color: kAccentIconDarkColor),
      primaryIconTheme: IconThemeData(color: kPrimaryIconDarkColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyText1: TextStyle(color: kBodyTextColorDark),
        bodyText2: TextStyle(color: kBodyTextColorDark),
        headline1: TextStyle(color: kTitleTextDarkColor),
        headline2: TextStyle(color: kTitleTextDarkColor,),
      )
  );
}
AppBarTheme appBarTheme = AppBarTheme(color: Colors.transparent,elevation: 0);