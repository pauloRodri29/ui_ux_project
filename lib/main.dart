import 'package:flutter/material.dart';
import 'package:ui_ux_project/iot/design/themes/theme_iot.dart';
import 'package:ui_ux_project/iot/pages/device_control.dart';

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
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      home: DeviceControlPage(),
    );
  }
}
