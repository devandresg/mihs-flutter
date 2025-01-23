import 'package:flutter/material.dart';

// Definiciones de Colores
class AppColors {
  static const Color darkCoffee500 = Color(0xFF34231E);
  static const Color red500 = Color(0xFF9E2A2B);
  static const Color yellow500 = Color(0xFFB78B20);
  static const Color orange500 = Color(0xFFFF6A13);
  static const Color gray500 = Color(0xFF7FA9AE);
  static const Color blue500 = Color(0xFF00968F);
  static const Color pastel500 = Color(0xFFFCD299);
  static const Color white500 = Colors.white;
  static const Color black500 = Colors.black87;
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
          fontFamily: "CenturyGothic",
          fontSize: 32,
          color: AppColors.pastel500),
      displayMedium: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 24,
          color: AppColors.pastel500),
      displaySmall: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 20,
          color: AppColors.pastel500),
      headlineMedium: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 18,
          color: AppColors.pastel500),
      bodyLarge: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 16,
          color: AppColors.pastel500),
      bodyMedium: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 14,
          color: AppColors.pastel500),
      bodySmall: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 12,
          color: AppColors.pastel500),
      labelMedium: TextStyle(
          fontFamily: "CenturyGothic",
          fontSize: 10,
          color: AppColors.pastel500),
      labelSmall: TextStyle(
          fontFamily: "CenturyGothic", fontSize: 7, color: AppColors.pastel500),
      // Styled typography
      titleLarge: TextStyle(
          fontFamily: "ParsleyScript",
          fontSize: 48,
          fontWeight: FontWeight.w500,
          color: AppColors.red500),
      titleMedium: TextStyle(
          fontFamily: "ParsleyScript",
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: AppColors.pastel500),
      titleSmall: TextStyle(
          fontFamily: "ParsleyScript",
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: AppColors.pastel500),
      headlineSmall: TextStyle(
          fontFamily: "ParsleyScript",
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.pastel500),
    );
  }
}
