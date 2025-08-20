import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF4CAF50);
  static const Color accentColor = Color(0xFFFFC107);

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
