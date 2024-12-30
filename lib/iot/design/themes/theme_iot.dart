import 'package:flutter/material.dart';
import 'package:ui_ux_project/iot/design/colors/app_colors.dart';
import 'package:ui_ux_project/iot/design/typography/typografia.dart';

class AppTheme {
  // Tema Claro
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.lightBackground,
      dialogBackgroundColor: AppColors.white,
      textTheme: AppThemeText.textThemeCustomLigth(context),
      iconTheme: IconThemeData(color: AppColors.primary900),
      appBarTheme: AppBarTheme(
        color: AppColors.lightBackground,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(AppColors.black),
          backgroundColor: WidgetStateProperty.all(AppColors.lightBackground),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      dividerColor: AppColors.stroke,
      unselectedWidgetColor: AppColors.subText,
      cardTheme: CardThemeData(
        elevation: 8,
        color: AppColors.primary950,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        circularTrackColor: AppColors.accent,
        linearMinHeight: 2,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(8),
          iconColor: WidgetStateProperty.all(
            AppColors.black,
          ),
        ),
      ),
    );
  }

  // Tema Escuro
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primary500,
      scaffoldBackgroundColor: AppColors.black,
      dialogBackgroundColor: AppColors.black,
      textTheme: AppThemeText.textThemeCustomDark(context),
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
