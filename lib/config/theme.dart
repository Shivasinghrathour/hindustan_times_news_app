import 'package:flutter/material.dart';
import 'package:news_application/config/color.dart';

var lightTheme = ThemeData(
  useMaterial3: true,

  colorScheme: const ColorScheme.light(
    background: LbgColor, // white color
    primary: LprimaryColor, // orange color
    secondary: LSecondatyColor, // link color blue color
    tertiary: LlabelColor, // lebel color gray color
  ),
  // for heading
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w800,
      letterSpacing: 1.5,
      wordSpacing: 1.5,
      fontSize: 23,
      color: LbgColor,
    ),
    // for image heading text
    displayLarge: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w800,
      letterSpacing: 1.5,
      wordSpacing: 1.5,
      fontSize: 23,
      color: LbgColor,
    ),
// for image author name
    bodyLarge: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: LbgColor,
    ),
    // for read time text
    displaySmall: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: LbgColor,
    ),
    // for news box news title
    displayMedium: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w700,
      fontSize: 22,
    ),
    // for news box author name
    bodyMedium: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: LlabelColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: LlabelColor,
    ),
    // for tags
    labelLarge: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w800,
      letterSpacing: 1,
      fontSize: 24,
    ),
    // for see all tag
    labelMedium: TextStyle(
        fontFamily: "OpenSans",
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 1,
        color: LSecondatyColor),
    labelSmall: TextStyle(
      fontFamily: "OpenSans",
      fontWeight: FontWeight.w400,
      fontSize: 20,
      letterSpacing: 1,
    ),
  ),
);

var darkTheme = ThemeData();
