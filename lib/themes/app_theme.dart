import 'package:flutter/material.dart';

class AppTheme {
  static final nonPhotoBlue = Color(0xFF99E6FF);
  static final paleAzure = Color(0xFF70D9FF);
  static final periwinkle = Color(0xFF9FADE0);
  static final lapisLazuli = Color(0xFF2A4B7C);
  static final mimiPink = Color(0xFFF7CDEC);
  static final bitterSweet = Color(0xFFF65C51);
  static final creamWhite = Color(0xFFFCFBF4);

  static final dayDream = ThemeData(
    scaffoldBackgroundColor: mimiPink,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconSize: WidgetStatePropertyAll(50),
        backgroundColor: WidgetStatePropertyAll(periwinkle),
        iconColor: WidgetStatePropertyAll(creamWhite),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(lapisLazuli),
        backgroundColor: WidgetStatePropertyAll(periwinkle),
        foregroundColor: WidgetStatePropertyAll(creamWhite),
        textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 20)),
        minimumSize: WidgetStatePropertyAll(Size(200, 50)),
      ),
    ),
  );
}
