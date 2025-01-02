import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_sport1/pages/positions_players/defenders.dart';
import 'package:ui_ux_project/app_sport1/pages/positions_players/forwards.dart';
import 'package:ui_ux_project/app_sport1/pages/positions_players/midfielders.dart';

class SportHomePage extends StatelessWidget {
  const SportHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.pending_outlined),
            ),
          ],
          title: Text("Select Players"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Forwards",
              ),
              Tab(
                text: "Midfielders",
              ),
              Tab(
                text: "Defenders",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Forwards(),
            Midfielders(),
            Defenders(),
          ],
        ),
      ),
    );
  }
}
