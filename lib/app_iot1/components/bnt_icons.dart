import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class DeviceControlButtonIcons extends StatelessWidget {
  const DeviceControlButtonIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.all(18),
          style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(AppColorsDevice.primary50),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            iconSize: WidgetStatePropertyAll(32),
            backgroundColor: WidgetStatePropertyAll(AppColorsDevice.primary950),
          ),
          onPressed: () {},
          icon: Icon(Icons.hdr_auto_rounded),
        ),
        IconButton(
          padding: EdgeInsets.all(18),
          onPressed: () {},
          icon: Icon(Icons.severe_cold),
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            iconSize: WidgetStatePropertyAll(32),
            backgroundColor: WidgetStatePropertyAll(AppColorsDevice.primary200),
          ),
        ),
        IconButton(
          padding: EdgeInsets.all(18),
          onPressed: () {},
          icon: Icon(Icons.sunny),
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            iconSize: WidgetStatePropertyAll(32),
            backgroundColor: WidgetStatePropertyAll(AppColorsDevice.primary200),
          ),
        ),
        IconButton(
          padding: EdgeInsets.all(18),
          onPressed: () {},
          icon: Icon(Icons.nightlight_round_outlined),
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            iconSize: WidgetStatePropertyAll(32),
            backgroundColor: WidgetStatePropertyAll(AppColorsDevice.primary200),
          ),
        ),
      ],
    );
  }
}
