import 'package:flutter/material.dart';
import 'package:ui_ux_project/app_sport1/components/card_infor_players.dart';
import 'package:ui_ux_project/app_sport1/models/player_infor.dart';

class Forwards extends StatelessWidget {
  const Forwards({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlayerInfor> players = [
      PlayerInfor(
        namePlayer: "Vinicius Jr.",
        pathImagePlayerHead: 'assets/football/ViniciusJrHead.png',
        pathImagePlayerBody: "assets/football/ViniciusJrBody.png",
        number: 7,
        nationality: "Brazilian",
        pathNationality: "assets/icons/football/iconBrasil.png",
        teamCurrent: "Real Madri",
        pathTeamCurrent: "assets/icons/football/iconmadri.png",
        overallRating: 94,
        age: 24,
        position: "F",
        preferredFoot: "Right",
        skills: {
          "BallSkills": 0.87,
          "Mental": 0.74,
          "Physical": 0.90,
          "Shooting": 0.89,
        },
        value: 208.00000000,
        wage: 350.000,
      ),
      PlayerInfor(
        namePlayer: "Kylian Mbappé",
        pathImagePlayerHead: 'assets/football/mbappeHead.png',
        number: 7,
        nationality: "French",
        pathNationality: "assets/icons/football/iconsFranca.png",
        teamCurrent: "Real Madri",
        pathTeamCurrent: "assets/icons/football/iconmadri.png",
        pathImagePlayerBody: "assets/football/KylianMbappeBody.png",
        overallRating: 91,
        age: 26,
        position: "F",
        preferredFoot: "Right",
        skills: {},
      ),
      PlayerInfor(
        namePlayer: "Erling Haaland",
        pathImagePlayerHead: 'assets/football/hallandHead.png',
        number: 9,
        nationality: "Norwegian",
        pathNationality: "assets/icons/football/iconNoruega.png",
        teamCurrent: "Manchester City",
        pathTeamCurrent: "assets/icons/football/iconManchesterCity.png",
        overallRating: 87,
        age: 25,
        position: "F",
        preferredFoot: "Left",
        skills: {},
      ),
      PlayerInfor(
        namePlayer: "Mohamed Salah",
        pathImagePlayerHead: 'assets/football/salahHead.png',
        number: 11,
        nationality: "Egypt",
        pathNationality: "assets/icons/football/iconEgito.png",
        teamCurrent: "Liverpool",
        pathTeamCurrent: "assets/icons/football/cionLiverpool.png",
        overallRating: 84,
        age: 32,
        position: "F",
        preferredFoot: "Left",
        skills: {},
      ),
      PlayerInfor(
        namePlayer: "Robert Lewandowski",
        pathImagePlayerHead: 'assets/football/RobertLewandowskiHead.png',
        number: 9,
        nationality: "Norwegian",
        pathNationality: "assets/icons/football/iconPolonia.png",
        teamCurrent: "Barcelona",
        pathTeamCurrent: "assets/icons/football/iconBarcelona.png",
        overallRating: 87,
        age: 25,
        position: "F",
        preferredFoot: "Left",
        skills: {},
      ),
    ];
    return ListView.builder(
      itemCount: players.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              "/infor_player",
              arguments: players[index],
            );
          },
          child: CardCustomInfoSport(
            playerInfor: players[index],
          ),
        );
      },
    );
  }
}
