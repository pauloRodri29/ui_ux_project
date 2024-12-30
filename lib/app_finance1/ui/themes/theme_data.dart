import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class AppThemeFinance1 {
  // Tema Claro
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColorsFinance.primary500,
      scaffoldBackgroundColor: AppColorsFinance.lightBackground,
      dialogBackgroundColor: AppColorsFinance.white,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColorsFinance.text),
        bodySmall: TextStyle(color: AppColorsFinance.text),
      ),
      iconTheme: IconThemeData(color: AppColorsFinance.primary900),
      appBarTheme: AppBarTheme(
        color: AppColorsFinance.black,
        iconTheme: IconThemeData(color: AppColorsFinance.white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColorsFinance.primary500,
      ),
      dividerColor: AppColorsFinance.stroke,
      unselectedWidgetColor: AppColorsFinance.subText,
    );
  }

  // Tema Escuro
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColorsFinance.primary500,
      scaffoldBackgroundColor: AppColorsFinance.black,
      dialogBackgroundColor: AppColorsFinance.black,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColorsFinance.white),
        bodySmall: TextStyle(color: AppColorsFinance.white),
      ),
      iconTheme: IconThemeData(color: AppColorsFinance.white),
      appBarTheme: AppBarTheme(
        color: AppColorsFinance.black,
        iconTheme: IconThemeData(color: AppColorsFinance.white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColorsFinance.primary500,
      ),
      dividerColor: AppColorsFinance.stroke,
      unselectedWidgetColor: AppColorsFinance.subText,
    );
  }
}
