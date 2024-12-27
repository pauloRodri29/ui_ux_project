import 'package:flutter/material.dart';
import 'package:ui_ux_project/finance/models/transactions.dart';

class CardCustomActivitiesHome extends StatelessWidget {
  final List<Transactions> transactions;
  const CardCustomActivitiesHome({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                spacing: 12,
                children: [
                  Divider(
                    // height: 50,
                    thickness: 4,
                    indent: 160,
                    endIndent: 160,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent activities",
                        style: TextTheme.of(context).titleLarge,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Row(
                          children: [
                            Text("View all"),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ...transactions.map(
                    (tr) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Icon(
                                    tr.icon,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        tr.title,
                                      ),
                                      Text(tr.details),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "\$ ${tr.value.toStringAsFixed(2)}",
                                style: TextTheme.of(context).titleMedium,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
