import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class FinanceCardDefault extends StatelessWidget {
  final List<Widget> children;
  const FinanceCardDefault({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColorsFinance.primary900,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
