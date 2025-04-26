import 'package:flutter/material.dart';

class AppTextTheme {
  static const TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.black),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
  );

  static const TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white70),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white70),
  );
}
