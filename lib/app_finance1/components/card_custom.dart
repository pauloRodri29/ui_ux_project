import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class FinanceCustomCard extends StatelessWidget {
  final String value;
  final String numberCard;
  final String flag;
  const FinanceCustomCard({
    super.key,
    required this.value,
    required this.numberCard,
    required this.flag,
  });

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
      height: 250,
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("**** **** **** $numberCard"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: TextTheme.of(context).bodyLarge,
                  ),
                  Text(
                    "\$ $value",
                    style: TextTheme.of(context).displaySmall,
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.credit_card_outlined,
                size: 164,
                color: AppColorsFinance.primary,
              ),
              Text(
                flag,
                style: TextTheme.of(context).headlineSmall,
              )
            ],
          )
        ],
      ),
    );
  }
}
