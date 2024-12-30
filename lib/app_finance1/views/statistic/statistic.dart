import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/components/card_default.dart';
import 'package:ui_ux_project/app_finance1/components/chart_custom.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class FinanceStatisticPage extends StatelessWidget {
  const FinanceStatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Statistic"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz_rounded),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 48,
        children: [
          Column(
            children: [
              Text("\$ 10,456", style: TextTheme.of(context).displayMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: 135 * pi / 180,
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: AppColorsFinance.primary500,
                    ),
                  ),
                  Text(
                    "Increase of 20% from last month",
                    style: TextStyle(
                      color: AppColorsFinance.subText,
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              LineChartSample(),
            ],
          ),
          FinanceCardDefault(
            children: [
              Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tips for increasing income",
                      style: TextTheme.of(context).titleLarge),
                  TextButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: WidgetStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                      ),
                      backgroundColor: WidgetStateProperty.all(AppColorsFinance.black),
                    ),
                    onPressed: () {},
                    child:
                        Text("Learn", style: TextTheme.of(context).bodyLarge),
                  ),
                ],
              ),
              SizedBox(
                child: Transform.rotate(
                  angle: 130 * pi / 180,
                  child: Icon(
                    color: AppColorsFinance.primary,
                    Icons.arrow_back,
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
