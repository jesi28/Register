import 'package:flutter/material.dart';
import 'package:registration/common/constants.dart';

class UiHelper {
  UiHelper();

  ThemeData themeData(String themeMode) {
    return ThemeData(
      brightness: themeMode == "LIGHT" ? Brightness.light : Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF169C89),
        brightness: themeMode == "LIGHT" ? Brightness.light : Brightness.dark,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              inherit: false,
              fontWeight: FontWeight.w400,
              fontFamily: Constants.FONT_INTER,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: WidgetStateProperty.all(
            const TextStyle(
              inherit: false,
              fontWeight: FontWeight.w500,
              fontFamily: Constants.FONT_INTER,
            ),
          ),
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        bodyMedium: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        bodySmall: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        labelLarge: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        labelMedium: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        labelSmall: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        titleLarge: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        titleMedium: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        titleSmall: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        headlineLarge: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        headlineMedium: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        headlineSmall: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        displayLarge: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        displayMedium: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
        displaySmall: TextStyle(
          inherit: true,
          fontFamily: Constants.FONT_INTER,
        ),
      ),
    );
  }
}
