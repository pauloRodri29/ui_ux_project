import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:ui_ux_project/app_iot1/components/card_device_controller.dart';
import 'package:ui_ux_project/app_iot1/components/card_temperature.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';
import 'package:ui_ux_project/app_iot1/models/climate.dart';
import 'package:intl/intl.dart';

class DeviceControlHomePage extends StatefulWidget {
  const DeviceControlHomePage({super.key});

  @override
  State<DeviceControlHomePage> createState() => _DeviceControlHomePageState();
}

class _DeviceControlHomePageState extends State<DeviceControlHomePage> {
  bool filter1Control = true;
  bool filter2Control = false;
  bool powerControl = false;
  int selectedIndex = 0;

  changeColorBnt() {
    setState(() {
      filter1Control = !filter1Control;
      filter2Control = !filter2Control;
    });
  }

  changePowerBnt(value) {
    setState(() {
      powerControl = !powerControl;
    });
  }

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
            DeviceControlCardTemperature(
              climate: Climate(
                  humidity: 30,
                  airQuality: "Good",
                  currentDate:
                      DateFormat(" MMMM 'de' d 'de' y").format(DateTime.now()),
                  climate: "Cloudy",
                  temperature: "26° C",
                  indoorTemp: "23° C"),
              pathImage: "assets/icons/device_control/climate.png",
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
              decoration: BoxDecoration(
                color: AppColorsDevice.primary100,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: changeColorBnt,
                      style: ButtonStyle(
                        foregroundColor: filter1Control
                            ? WidgetStatePropertyAll(
                                AppColorsDevice.lightBackground)
                            : WidgetStatePropertyAll(
                                AppColorsDevice.primary950),
                        backgroundColor: filter1Control
                            ? WidgetStatePropertyAll(AppColorsDevice.primary950)
                            : WidgetStatePropertyAll(
                                AppColorsDevice.lightBackground),
                      ),
                      child: Text("Room"),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: changeColorBnt,
                      style: ButtonStyle(
                        foregroundColor: filter2Control
                            ? WidgetStatePropertyAll(
                                AppColorsDevice.lightBackground)
                            : WidgetStatePropertyAll(
                                AppColorsDevice.primary950),
                        backgroundColor: filter2Control
                            ? WidgetStatePropertyAll(AppColorsDevice.primary950)
                            : WidgetStatePropertyAll(
                                AppColorsDevice.lightBackground),
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
                  active: powerControl,
                  title: "Smarth Light",
                  descr: "5 device",
                  icon: powerControl
                      ? Icons.lightbulb_circle_outlined
                      : Icons.lightbulb_circle,
                  onChanged: changePowerBnt,
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
        selectedIndex: selectedIndex,
        activeButtonFlexFactor: 60,
        activeIconColor: AppColorsDevice.accent,
        backgroundOpacity: 1,
        backgroundColor: AppColorsDevice.primary950,
        borderRadius: 10,
        navigationBarButtons: [
          NavigationBarButton(
              icon: Icons.home_filled,
              backgroundColor: AppColorsDevice.primary50),
          NavigationBarButton(
              icon: Icons.data_usage_rounded,
              backgroundColor: AppColorsDevice.primary50),
          NavigationBarButton(
              icon: Icons.settings, backgroundColor: AppColorsDevice.primary50),
          NavigationBarButton(
              icon: Icons.person, backgroundColor: AppColorsDevice.primary50),
        ],
        onTabChange: changeTab,
      ),
    );
  }
}
