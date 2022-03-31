import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      secondary: secondaryColor,
      onSecondary: onSecondaryColor,
      error: errorColor,
      onError: onErrorColor,
      background: backgroundColor,
      onBackground: onBackgroundColor,
      surface: surfaceColor,
      onSurface: onSurfaceColor,
  ),
);
