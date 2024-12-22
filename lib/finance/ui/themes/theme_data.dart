import 'package:flutter/material.dart';
import 'package:ui_ux_project/finance/ui/colors/colors.dart';

class AppTheme {
  // Tema Claro
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primary500,
      scaffoldBackgroundColor: AppColors.lightBackground,
      dialogBackgroundColor: AppColors.white,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.text),
        bodySmall: TextStyle(color: AppColors.text),
      ),
      iconTheme: IconThemeData(color: AppColors.primary900),
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary500,
      ),
      dividerColor: AppColors.stroke,
      unselectedWidgetColor: AppColors.subText,
    );
  }

  // Tema Escuro
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primary500,
      scaffoldBackgroundColor: AppColors.black,
      dialogBackgroundColor: AppColors.black,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.white),
        bodySmall: TextStyle(color: AppColors.white),
      ),
      iconTheme: IconThemeData(color: AppColors.white),
      appBarTheme: AppBarTheme(
        color: AppColors.black,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary500,
      ),
      dividerColor: AppColors.stroke,
      unselectedWidgetColor: AppColors.subText,
    );
  }
}
