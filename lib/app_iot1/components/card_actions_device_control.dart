import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class DeviceControlCardActionsDetailsDevice extends StatelessWidget {
  const DeviceControlCardActionsDetailsDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorsDevice.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 12,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColorsDevice.black),
              ),
              child: Text(
                "8 watt",
                style: TextStyle(color: AppColorsDevice.primary50),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Text("9 watt"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("12 watt"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("17 watt"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("8 watt"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("8 watt"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("8 watt"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
