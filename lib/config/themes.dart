import 'package:flutter/material.dart';

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF181818),
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF5056FF),
    secondary: Color(0xFF16F1F1),
    surface: Color(0xFF181818),
  ),
  fontFamily: 'Sans',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Color(0xFF5056FF)),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    ),
  ),
);
