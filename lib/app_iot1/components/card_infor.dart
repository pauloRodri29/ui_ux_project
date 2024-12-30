import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_iot1/design/colors/app_colors.dart';

class DeviceControlCardInfor extends StatelessWidget {
  final double value;
  const DeviceControlCardInfor({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColorsDevice.primary200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "Power consumption",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                " ${value.round().toString()} Watt Smart Light",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.flash_on_outlined,
                    size: 32,
                  ),
                  Text("5kWh")
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.outlet_outlined,
                    size: 32,
                  ),
                  Text("120kWh")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
