import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:ui_ux_project/iot/components/card_device_controller.dart';
import 'package:ui_ux_project/iot/components/card_temperature.dart';
import 'package:ui_ux_project/iot/design/colors/app_colors.dart';

class DeviceControlHomePage extends StatefulWidget {
  const DeviceControlHomePage({super.key});

  @override
  State<DeviceControlHomePage> createState() => _DeviceControlHomePageState();
}

class _DeviceControlHomePageState extends State<DeviceControlHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, Paulo"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 12,
          children: [
            DeviceControlCardTemperature(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
              decoration: BoxDecoration(
                color: AppColors.primary100,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Room"),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStatePropertyAll(AppColors.primary50),
                        backgroundColor:
                            WidgetStatePropertyAll(AppColors.primary950),
                      ),
                      child: Text("Devices"),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                DeviceControlerCardControl(
                  active: true,
                  title: "Smarth Light",
                  descr: "5 device",
                  icon: Icons.light,
                ),
                DeviceControlerCardControl(
                  active: false,
                  title: "Smarth AC",
                  descr: "1 device",
                  icon: Icons.print,
                )
              ],
            ),
            Row(
              children: [
                DeviceControlerCardControl(
                  active: false,
                  title: "Smarth TV",
                  descr: "2 device",
                  icon: Icons.tv,
                ),
                DeviceControlerCardControl(
                  active: false,
                  title: "Coffee Maker",
                  descr: "1 device",
                  icon: Icons.coffee_maker,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ResponsiveNavigationBar(
        activeButtonFlexFactor: 60,
        activeIconColor: AppColors.accent,
        backgroundOpacity: 1,
        backgroundColor: AppColors.primary950,
        borderRadius: 10,
        navigationBarButtons: [
          NavigationBarButton(
              icon: Icons.home_filled, backgroundColor: AppColors.primary50),
          NavigationBarButton(
              icon: Icons.data_usage_rounded,
              backgroundColor: AppColors.primary50),
          NavigationBarButton(
              icon: Icons.settings, backgroundColor: AppColors.primary50),
          NavigationBarButton(
              icon: Icons.person, backgroundColor: AppColors.primary50),
        ],
        onTabChange: (value) {},
      ),
    );
  }
}
