import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/themes/theme_iot.dart';
import 'package:ui_ux_project/app_iot1/pages/device_control.dart';

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
      theme: AppThemeDeviceControl.lightTheme(context),
      darkTheme: AppThemeDeviceControl.darkTheme(context),
      home: DeviceControlPage(),
    );
  }
}
