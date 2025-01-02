import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_sport1/components/bar_progress_characteristics.dart';
import 'package:ui_ux_project/app_sport1/models/player_infor.dart';
import 'package:ui_ux_project/app_sport1/ui/colors/app_colors.dart';

class InforPlayersPage extends StatelessWidget {
  const InforPlayersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PlayerInfor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary950,
        foregroundColor: AppColors.primary50,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.pending_outlined),
          ),
        ],
        centerTitle: true,
        title: Text(args.namePlayer),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 1,
            center: Alignment.centerLeft,
            colors: [AppColors.primary800, AppColors.primary950],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 12,
          children: [
            Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  args.pathTeamCurrent,
                  width: 24,
                  height: 24,
                ),
                Text(
                  args.teamCurrent,
                  style: TextStyle(color: AppColors.primary50, fontSize: 18),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  args.pathImagePlayerBody,
                  width: 200,
                  height: 400,
                ),
                Column(
                  spacing: 24,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Position: ${args.position}",
                      softWrap: true,
                      style: TextStyle(
                        color: AppColors.primary50,
                      ),
                    ),
                    Text(
                      "Kit Number: ${args.number.toString()}",
                      style: TextStyle(
                        color: AppColors.primary50,
                      ),
                    ),
                    Text(
                      "Nationality: ${args.nationality}",
                      softWrap: true,
                      style: TextStyle(
                        color: AppColors.primary50,
                      ),
                    ),
                    Text(
                      "Preferred Foot: ${args.preferredFoot}",
                      style: TextStyle(
                        color: AppColors.primary50,
                      ),
                    ),
                    Text(
                      "Age: ${args.age.toString()}",
                      style: TextStyle(
                        color: AppColors.primary50,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    BarProgressCharacteristics(
                      playerInfor: args,
                    ),
                  ],
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: "Overall Rating: ",
                style: TextStyle(
                  color: AppColors.primary50,
                  wordSpacing: 4,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w300,
                ),
                children: [
                  TextSpan(
                    text: args.overallRating.toString(),
                    style: TextStyle(
                      color: AppColors.primary50,
                      fontSize: 34,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              spacing: 24,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Value",
                      style: TextStyle(
                        color: AppColors.primary50,
                        fontWeight: FontWeight.w300,
                        fontSize: 34,
                      ),
                    ),
                    Text(
                      "€ ${args.value.toString()}",
                      style: TextStyle(
                        color: AppColors.primary50,
                        fontWeight: FontWeight.w300,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
                Divider(
                  endIndent: 12,
                  indent: 12,
                  color: AppColors.greenText,
                  height: 12,
                ),
                Column(
                  children: [
                    Text(
                      "Wage",
                      style: TextStyle(
                          color: AppColors.primary50,
                          fontWeight: FontWeight.w300,
                          fontSize: 34),
                    ),
                    Text(
                      "€ ${args.wage.toString()}",
                      style: TextStyle(
                        color: AppColors.primary50,
                        fontWeight: FontWeight.w300,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
