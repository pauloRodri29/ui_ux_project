import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class AppThemeText {
  static Color textLight = AppColorsDevice.primary50;
  static Color textDark = AppColorsDevice.black;

  static TextTheme textThemeCustomDark(BuildContext context) {
    return TextTheme(
      displayLarge: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 57,
        fontWeight: FontWeight.w400,
        height: 1.12,
      ),
      displayMedium: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 45,
        fontWeight: FontWeight.w400,
        height: 1.16,
      ),
      displaySmall: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 36,
        fontWeight: FontWeight.w400,
        height: 1.22,
      ),
      headlineLarge: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 32,
        fontWeight: FontWeight.w400,
        height: 1.25,
      ),
      headlineMedium: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 28,
        fontWeight: FontWeight.w400,
        height: 1.28,
      ),
      headlineSmall: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 1.33,
      ),
      titleLarge: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 22,
        fontWeight: FontWeight.w400,
        height: 1.27,
      ),
      titleMedium: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
      titleSmall: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.43,
      ),
      bodyLarge: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ), // Corresponde ao txBody
      bodyMedium: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.43,
      ), // Corresponde ao txBodySmall
      bodySmall: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.33,
      ),
      labelLarge: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.43,
      ), // Corresponde ao txButton
      labelMedium: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.33,
      ), // Corresponde ao txButtonSmall
      labelSmall: TextStyle(
        color: AppThemeText.textLight,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.27,
      ),
    );
  }

  static TextTheme textThemeCustomLigth(BuildContext context) {
    return textThemeCustomDark(context).copyWith(
      displayLarge: TextStyle(
        color: AppThemeText.textDark,
      ),
      displayMedium: TextStyle(
        color: AppThemeText.textDark,
      ),
      displaySmall: TextStyle(
        color: AppThemeText.textDark,
      ),
      headlineLarge: TextStyle(
        color: AppThemeText.textDark,
      ),
      headlineMedium: TextStyle(
        color: AppThemeText.textDark,
      ),
      headlineSmall: TextStyle(
        color: AppThemeText.textDark,
      ),
      titleLarge: TextStyle(
        color: AppThemeText.textDark,
      ),
      titleMedium: TextStyle(
        color: AppThemeText.textDark,
      ),
      titleSmall: TextStyle(
        color: AppThemeText.textDark,
      ),
      bodyLarge: TextStyle(
        color: AppThemeText.textDark,
      ), // Corresponde ao txBody
      bodyMedium: TextStyle(
        color: AppThemeText.textDark,
      ), // Corresponde ao txBodySmall
      bodySmall: TextStyle(
        color: AppThemeText.textDark,
      ),
      labelLarge: TextStyle(
        color: AppThemeText.textDark,
      ), // Corresponde ao txButton
      labelMedium: TextStyle(
        color: AppThemeText.textDark,
      ), // Corresponde ao txButtonSmall
      labelSmall: TextStyle(
        color: AppThemeText.textDark,
      ),
    );
  }
}
