import 'package:flutter/material.dart';
import 'package:ui_ux_project/finance/ui/themes/theme_data.dart';
import 'package:ui_ux_project/finance/views/statistic/statistic.dart';

void main() {
  runApp(const ManangerScreen());
}

class ManangerScreen extends StatelessWidget {
  const ManangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.darkTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      home: FinanceStatisticPage(),
    );
  }
}
