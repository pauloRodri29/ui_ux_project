import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ui_ux_project/app_sport1/models/player_infor.dart';
import 'package:ui_ux_project/app_sport1/ui/colors/app_colors.dart';

class BarProgressCharacteristics extends StatelessWidget {
  final PlayerInfor playerInfor;
  const BarProgressCharacteristics({super.key, required this.playerInfor});

  @override
  Widget build(BuildContext context) {
    final widBar = MediaQuery.of(context).size.width * 0.4;
    return Column(
      spacing: 12,
      children: [
        Row(
          spacing: 24,
          children: [
            Text(
              "Ball Skills",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
            Text(
              playerInfor.skills['BallSkills'] is double
                  ? "${(playerInfor.skills['BallSkills']! * 100).ceil()}%"
                  : "unknown",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: playerInfor.skills['BallSkills'] ?? 0.0,
          width: widBar,
        ),
        Row(
          spacing: 24,
          children: [
            Text(
              "Mental",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
            Text(
              playerInfor.skills['Mental'] is double
                  ? "${(playerInfor.skills['Mental']! * 100).ceil()}%"
                  : "unknown",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: playerInfor.skills['Mental'] ?? 0.0,
          width: widBar,
        ),
        Row(
          spacing: 24,
          children: [
            Text(
              "Physical",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
            Text(
              playerInfor.skills['Physical'] is double
                  ? "${(playerInfor.skills['Physical']! * 100).ceil()}%"
                  : "unknown",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: playerInfor.skills['Physical'] ?? 0.0,
          width: widBar,
        ),
        Row(
          spacing: 24,
          children: [
            Text(
              "Shooting",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
            Text(
              playerInfor.skills['Shooting'] is double
                  ? "${(playerInfor.skills['Shooting']! * 100).ceil()}%"
                  : "unknown",
              style: TextStyle(
                color: AppColors.primary50,
              ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: playerInfor.skills['Shooting'] ?? 0.0,
          width: widBar,
        )
      ],
    );
  }
}
