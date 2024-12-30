import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/themes/theme_iot.dart';

class DeviceControlCardTemperature extends StatelessWidget {
  const DeviceControlCardTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 12,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "18° C",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.displaySmall,
                    ),
                    Text(
                      "Cloudy",
                      style:
                          AppThemeDeviceControl.darkTheme(context).textTheme.headlineSmall,
                    ),
                    Text(
                      "Tue, February 07",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/icons/device_control/climate.png",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Indoor Temp",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "23° C",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Humidity",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "40%",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Air Quality",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "Good",
                      style: AppThemeDeviceControl.darkTheme(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
