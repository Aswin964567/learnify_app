import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnify_app/core/theme/app_bar_theme.dart';
import 'package:learnify_app/core/theme/button_theme.dart';
import 'package:learnify_app/core/theme/colors/app_color_schemes.dart';
import 'package:learnify_app/core/theme/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorSchemes.light,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    appBarTheme: AppAppBarTheme.appBarTheme,
    elevatedButtonTheme: AppButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonTheme,
    textTheme: AppTextTheme.textTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorSchemes.dark,
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    fontFamily: GoogleFonts.poppins().fontFamily,
    textTheme: AppTextTheme.textTheme,
  );
}
