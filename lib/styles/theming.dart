import 'package:flutter/material.dart';

/// Theming class that provides custom application themes.
class Theming {
  const Theming._();

  static late final ThemeData light;
  static late final ThemeData dark;

  static void initialize() {
    light = lightTheme();
    dark = darkTheme();
  }

  /// Generated light theme for the app.
  static ThemeData lightTheme() {
    final theme = ThemeData.light();

    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        headline6: TextStyle(
          fontSize: 14.5,
          fontWeight: FontWeight.w600,
          color: theme.textTheme.bodyText1?.color,
          letterSpacing: 0.1,
        ),
        subtitle2: theme.textTheme.bodyText1?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
          letterSpacing: 0.1,
        ),
        bodyText1: theme.textTheme.bodyText1?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black54,
          letterSpacing: 0.1,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      highlightColor: Colors.blue,
    );
  }

  /// Generated dark theme for the app.
  static ThemeData darkTheme() {
    final theme = ThemeData.dark();

    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        headline6: TextStyle(
          fontSize: 14.5,
          fontWeight: FontWeight.w600,
          color: theme.textTheme.bodyText1?.color,
          letterSpacing: 0.1,
        ),
        subtitle2: theme.textTheme.bodyText1?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          letterSpacing: 0.1,
        ),
        bodyText1: theme.textTheme.bodyText1?.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.white54,
          letterSpacing: 0.1,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      highlightColor: Colors.blue,
    );
  }
}
