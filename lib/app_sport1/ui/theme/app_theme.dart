import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_sport1/ui/colors/app_colors.dart';

class AppThemeSport {
  // Tema Claro
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: AppColors.primary900,
        onPrimary: AppColors.blackColor,
        secondary: AppColors.primary300,
        onSecondary: AppColors.blackColor,
        error: AppColors.errorColor,
        onError: AppColors.primary50,
        surface: AppColors.primary50,
        onSurface: AppColors.blackColor,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            width: 0.2,
          ),
        ),
      ),
      textTheme: TextTheme(
        labelMedium: TextStyle(
          color: AppColors.greenText,
          fontSize: 12,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
