import 'package:flutter/material.dart';
ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  primaryColor: const Color(0xff0d47a1),
  disabledColor: const Color(0xFFBABFC4),
  primaryColorDark: const Color(0xff0e3677),
  brightness: Brightness.light,
  hintColor: const Color(0xFF9F9F9F),
  cardColor: Colors.white,
  colorScheme: const ColorScheme.light(
      primary: Color(0xFFBBF9F1),
      surface: Color(0xFFF3F3F3),
      error: Color(0xFFFF6767),
      secondary: Color(0xFF008C7B),
    tertiary: Color(0xFF7CCD8B),
    tertiaryContainer: Color(0xFFC98B3E),
    secondaryContainer: Color(0xFFEE6464),
    onTertiary: Color(0xFFD9D9D9),
    onSecondary: Color(0xFF00FEE1),
    onSecondaryContainer: Color(0xFFA8C5C1),
    onTertiaryContainer: Color(0xFF425956),
    outline: Color(0xFF8CFFF1),
    onPrimaryContainer: Color(0xFFDEFFFB),
    primaryContainer: Color(0xFFFFA800),
    onErrorContainer: Color(0xFFFFE6AD),
    onPrimary: Color(0xFF14B19E),
    surfaceTint: Color(0xFF0B9722),
    errorContainer: Color(0xFFF6F6F6),
    shadow: Color(0xFFCEFCF7)


  ),
  textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: const Color(0xff0d47a1))),

  textTheme: const TextTheme(
   displayLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF202020)),
   displayMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF393939)),
   displaySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF282828)),
   bodyLarge: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF272727)),
    bodyMedium: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF334257)),
    bodySmall: TextStyle(fontWeight: FontWeight.w300, color: Color(0xFF1D2D2B)),
  )
);
