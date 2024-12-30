import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_finance1/components/actions_bnt_home.dart';
import 'package:ui_ux_project/app_finance1/components/card_custom.dart';
import 'package:ui_ux_project/app_finance1/components/card_custom_activities.dart';
import 'package:ui_ux_project/app_finance1/models/transactions.dart';

class FinanceHomePage extends StatelessWidget {
  const FinanceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello, Paulo"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person,
            size: 32,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_rounded,
                size: 32,
              ),
            ),
          )
        ],
      ),
      body: Column(
        spacing: 24,
        children: [
          FinanceCustomCard(
            value: "12,439",
            numberCard: '4432',
            flag: "Visa",
          ),
          FinanceActionsBntHome(),
          Expanded(
            child: CardCustomActivitiesHome(
              transactions: [
                Transactions(
                  icon: Icons.fastfood,
                  title: "Fast Food",
                  details: "Lunch at Burger King",
                  value: 15.75,
                ),
                Transactions(
                  icon: Icons.book_rounded,
                  title: "EldRing",
                  details: "Purchased new fantasy novel",
                  value: 29.99,
                ),
                Transactions(
                  icon: Icons.airplanemode_active,
                  title: "Flight Ticket",
                  details: "Business trip to New York",
                  value: 300.00,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
