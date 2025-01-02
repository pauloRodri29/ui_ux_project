import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/ui/colors/colors.dart';

class FinanceBntCustomLogin extends StatelessWidget {
  const FinanceBntCustomLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 8,
      children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor:
                WidgetStatePropertyAll(AppColorsFinance.primary900),
            maximumSize: WidgetStatePropertyAll(
              Size.fromWidth(MediaQuery.of(context).size.width * 0.8),
            ),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Get started',
              textAlign: TextAlign.center,
              style: TextTheme.of(context).headlineLarge,
            ),
          ),
        ),
        IconButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(AppColorsFinance.black2b2b2b),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.face,
            size: 40,
          ),
        )
      ],
    );
  }
}
