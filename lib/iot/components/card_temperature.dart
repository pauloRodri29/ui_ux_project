import 'package:flutter/material.dart';
import 'package:ui_ux_project/iot/design/themes/theme_iot.dart';

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
                      style: AppTheme.darkTheme(context).textTheme.displaySmall,
                    ),
                    Text(
                      "Cloudy",
                      style:
                          AppTheme.darkTheme(context).textTheme.headlineSmall,
                    ),
                    Text(
                      "Tue, February 07",
                      style: AppTheme.darkTheme(context).textTheme.bodySmall,
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
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "23° C",
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Humidity",
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "40%",
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Air Quality",
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
                    ),
                    Text(
                      "Good",
                      style: AppTheme.darkTheme(context).textTheme.labelSmall,
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
