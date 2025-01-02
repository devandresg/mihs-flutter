import 'package:flutter/material.dart';

// Definiciones de Colores
class AppColors {
  static const Color darkCoffee500 = Color(0xFF34231E);
  static const Color red500 = Color(0xFF9E1B1D);
  static const Color yellow500 = Color(0xFFD17126);
  static const Color gray500 = Color(0xFFDDD4CF);
}

// Tokens (Directamente en AppTheme)
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.red500,
    colorScheme: const ColorScheme.light(
      primary: AppColors.red500,
      secondary: AppColors.yellow500,
      surface: AppColors.darkCoffee500,
      onSurface: AppColors.gray500,
    ),
    textTheme: _buildTextTheme(),
    fontFamily: "Inter",
  );

  static TextTheme _buildTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
          fontFamily: "Inter", fontSize: 32, color: AppColors.gray500),
      displayMedium: TextStyle(
          fontFamily: "Inter", fontSize: 24, color: AppColors.gray500),
      displaySmall: TextStyle(
          fontFamily: "Inter", fontSize: 20, color: AppColors.gray500),
      headlineMedium: TextStyle(
          fontFamily: "Inter", fontSize: 18, color: AppColors.gray500),
      bodyLarge: TextStyle(
          fontFamily: "Inter", fontSize: 16, color: AppColors.gray500),
      bodyMedium: TextStyle(
          fontFamily: "Inter", fontSize: 14, color: AppColors.gray500),
      bodySmall: TextStyle(
          fontFamily: "Inter", fontSize: 12, color: AppColors.gray500),
      labelMedium: TextStyle(
          fontFamily: "Inter", fontSize: 10, color: AppColors.gray500),
      labelSmall:
          TextStyle(fontFamily: "Inter", fontSize: 7, color: AppColors.gray500),
      // Styled typography
      titleLarge: TextStyle(
          fontFamily: "Damion",
          fontSize: 48,
          fontWeight: FontWeight.w500,
          color: AppColors.red500),
      titleMedium: TextStyle(
          fontFamily: "Damion",
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: AppColors.gray500),
      titleSmall: TextStyle(
          fontFamily: "Damion",
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: AppColors.gray500),
      headlineSmall: TextStyle(
          fontFamily: "Damion",
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.gray500),
    );
  }
}
