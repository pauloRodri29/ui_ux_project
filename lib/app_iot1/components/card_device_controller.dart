import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class DeviceControlerCardControl extends StatelessWidget {
  final String title;
  final String descr;
  final IconData icon;
  final bool active;
  const DeviceControlerCardControl({
    super.key,
    required this.title,
    required this.descr,
    required this.icon,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color: AppColorsDevice.primary50,
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: Switch(
                      value: active,
                      onChanged: (value) {},
                      activeColor: AppColorsDevice.accent,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColorsDevice.primary50,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    descr,
                    style: TextStyle(color: AppColorsDevice.primary50),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
