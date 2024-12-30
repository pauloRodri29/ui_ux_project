import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class FinanceActionsBntHome extends StatelessWidget {
  const FinanceActionsBntHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        spacing: 24,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            spacing: 12,
            children: [
              IconButton(
                color: AppColorsFinance.black,
                iconSize: 32,
                padding: EdgeInsets.all(12),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColorsFinance.primary),
                ),
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined),
              ),
              Text("Top up")
            ],
          ),
          Column(
            spacing: 12,
            children: [
              IconButton(
                color: AppColorsFinance.black,
                iconSize: 32,
                padding: EdgeInsets.all(12),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColorsFinance.primary),
                ),
                onPressed: () {},
                icon: Transform.rotate(
                  angle: -50 * pi / 180,
                  child: Icon(Icons.send),
                ),
              ),
              Text("Send")
            ],
          ),
          Column(
            spacing: 12,
            children: [
              IconButton(
                color: AppColorsFinance.black,
                iconSize: 32,
                padding: EdgeInsets.all(12),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColorsFinance.primary),
                ),
                onPressed: () {},
                icon: Icon(Icons.library_add_check_rounded),
              ),
              Text("Request")
            ],
          ),
        ]);
  }
}
