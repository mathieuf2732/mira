import 'package:flutter/material.dart';

class StrawberryMilk {
  static final nonPhotoBlue = Color(0xFF99E6FF);
  static final paleAzure = Color(0xFF70D9FF);
  static final periwinkle = Color(0xFF9FADE0);
  static final lapisLazuli = Color(0xFF2A4B7C);
  static final mimiPink = Color(0xFFF7CDEC);
  static final bitterSweet = Color(0xFFF65C51);
  static final creamWhite = Color(0xFFFCFBF4);

  static ThemeData getTheme() {
    return themeBuiler(
      primary: creamWhite,
      secondary: periwinkle,
      surface: mimiPink,
      error: bitterSweet,
      textColor: lapisLazuli,
      brightness: Brightness.light,
    );
  }
}

ThemeData themeBuiler({
  required Color primary,
  required Color secondary,
  required Color surface,
  required Color error,
  required Color textColor,
  required Brightness brightness,
}) {
  return ThemeData(
    colorScheme: ColorScheme(
      primary: primary,
      secondary: secondary,
      surface: surface,
      error: error,
      onPrimary: textColor,
      onSecondary: textColor,
      onSurface: textColor,
      onError: textColor,
      brightness: brightness,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all(TextStyle(fontSize: 20)),
        padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
        backgroundColor: WidgetStateProperty.all(primary),
        foregroundColor: WidgetStateProperty.all(textColor),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        iconSize: WidgetStateProperty.all(50),
        iconColor: WidgetStatePropertyAll(textColor),
        backgroundColor: WidgetStateProperty.all(secondary),
      ),
    ),
  );
}

class AfterDarkRose {
  static final rose = Color.fromARGB(255, 198, 24, 102);
  static final grape = Color(0xFF7209b7);
  static final zaffre = Color(0xFF3A0CA3);
  static final neonBlue = Color(0xFF4361EE);
  static final vividSkyBlue = Color(0xFF4CC9F0);

  static ThemeData getTheme() {
    return themeBuiler(
      primary: rose,
      secondary: neonBlue,
      surface: zaffre,
      error: grape,
      textColor: Colors.white,
      brightness: Brightness.dark,
    );
  }
}
