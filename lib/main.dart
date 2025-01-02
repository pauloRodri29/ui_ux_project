import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/themes/theme_data.dart';
import 'package:ui_ux_project/app_finance1/views/login/login.dart';

void main() {
  runApp(const ManangerScreen());
}

class ManangerScreen extends StatelessWidget {
  const ManangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemeFinance1.darkTheme(context),
      darkTheme: AppThemeFinance1.darkTheme(context),
      home: FinanceLoginPage(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => SportHomePage(),
      //   "/infor_player": (context) => InforPlayersPage(),
      // },
    );
  }
}
