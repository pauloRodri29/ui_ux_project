import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';
import 'package:ui_ux_project/app_iot1/design/typography/typografia.dart';

class AppThemeDeviceControl {
  // Tema Claro
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColorsDevice.lightBackground,
      dialogBackgroundColor: AppColorsDevice.white,
      textTheme: AppThemeText.textThemeCustomLigth(context),
      iconTheme: IconThemeData(color: AppColorsDevice.primary900),
      appBarTheme: AppBarTheme(
        color: AppColorsDevice.lightBackground,
        iconTheme: IconThemeData(color: AppColorsDevice.white),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(AppColorsDevice.black),
          backgroundColor: WidgetStateProperty.all(AppColorsDevice.lightBackground),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      dividerColor: AppColorsDevice.stroke,
      unselectedWidgetColor: AppColorsDevice.subText,
      cardTheme: CardThemeData(
        elevation: 8,
        color: AppColorsDevice.primary950,
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        circularTrackColor: AppColorsDevice.accent,
        linearMinHeight: 2,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(8),
          iconColor: WidgetStateProperty.all(
            AppColorsDevice.black,
          ),
        ),
      ),
    );
  }

  // Tema Escuro
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColorsDevice.primary500,
      scaffoldBackgroundColor: AppColorsDevice.black,
      dialogBackgroundColor: AppColorsDevice.black,
      textTheme: AppThemeText.textThemeCustomDark(context),
      iconTheme: IconThemeData(color: AppColorsDevice.white),
      appBarTheme: AppBarTheme(
        color: AppColorsDevice.black,
        iconTheme: IconThemeData(color: AppColorsDevice.white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColorsDevice.primary500,
      ),
      dividerColor: AppColorsDevice.stroke,
      unselectedWidgetColor: AppColorsDevice.subText,
    );
  }
}
