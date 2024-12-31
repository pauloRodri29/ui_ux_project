import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/themes/theme_iot.dart';
import 'package:ui_ux_project/app_iot1/models/climate.dart';

class DeviceControlCardTemperature extends StatelessWidget {
  final Climate climate;
  final String pathImage;
  const DeviceControlCardTemperature({
    super.key,
    required this.climate,
    required this.pathImage,
  });

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
                      climate.temperature,
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .displaySmall,
                    ),
                    Text(
                      climate.climate,
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .headlineSmall,
                    ),
                    Text(
                      climate.currentDate.toString(),
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .bodySmall,
                    ),
                  ],
                ),
                Image.asset(pathImage
                    // ,
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
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                    Text(
                      climate.indoorTemp,
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Humidity",
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                    Text(
                      "${climate.humidity.toString()}%",
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Air Quality",
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                    Text(
                      climate.airQuality,
                      style: AppThemeDeviceControl.darkTheme(context)
                          .textTheme
                          .labelSmall,
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
