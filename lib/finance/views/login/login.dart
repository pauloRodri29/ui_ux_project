import 'package:flutter/material.dart';
import 'package:ui_ux_project/finance/components/bnt_custom_login.dart';
import 'package:ui_ux_project/finance/ui/colors/colors.dart';

class FinanceLoginPage extends StatelessWidget {
  const FinanceLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.wb_incandescent_sharp,
          color: AppColors.primary900,
          size: 48,
        ),
        actions: [
          Icon(
            Icons.snowing,
            size: 48,
            color: AppColors.primary900,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Image(
              image: AssetImage('assets/financer_images/logoProjects.png'),
            ),
            RichText(
              text: TextSpan(
                text: 'Find way to manage ',
                style: TextTheme.of(context).displayLarge,
                children: [
                  TextSpan(
                    text: 'your finance',
                    style: TextStyle(color: AppColors.primary900),
                  ),
                ],
              ),
            ),
            Text(
              "The most Transparent & Security Bank ever",
              style: TextTheme.of(context).labelSmall,
            ),
            FinanceBntCustomLogin()
          ],
        ),
      ),
    );
  }
}
