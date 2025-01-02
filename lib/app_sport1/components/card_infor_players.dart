import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_sport1/models/player_infor.dart';
import 'package:ui_ux_project/app_sport1/ui/theme/app_theme.dart';

class CardCustomInfoSport extends StatelessWidget {
  final PlayerInfor playerInfor;
  const CardCustomInfoSport({super.key, required this.playerInfor});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(14),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              playerInfor.pathImagePlayerHead,
              height: 80,
              width: 80,
            ),
            Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playerInfor.namePlayer,
                  style:
                      AppThemeSport.lightTheme(context).textTheme.titleMedium,
                ),
                Row(
                  spacing: 12,
                  children: [
                    Image.asset(
                      playerInfor.pathTeamCurrent,
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      playerInfor.teamCurrent,
                      style: AppThemeSport.lightTheme(context)
                          .textTheme
                          .labelSmall,
                    ),
                  ],
                                  ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Overall Rating",
                  style: AppThemeSport.lightTheme(context).textTheme.labelSmall,
                ),
                Text(
                  playerInfor.overallRating.toString(),
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
