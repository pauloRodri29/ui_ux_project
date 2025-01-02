class PlayerInfor {
  final String namePlayer;
  final String pathImagePlayerHead;
  final String pathImagePlayerBody;
  final int number;
  final String nationality;
  final String pathNationality;
  final String teamCurrent;
  final String pathTeamCurrent;
  final int overallRating;
  final int age;
  final String position;
  final String preferredFoot;
  final Map<String, double> skills;
  final double value;
  final double wage;

  PlayerInfor({
    required this.namePlayer,
    required this.pathImagePlayerHead,
    required this.number,
    required this.nationality,
    required this.pathNationality,
    required this.teamCurrent,
    required this.pathTeamCurrent,
    required this.overallRating,
    required this.age,
    required this.position,
    required this.preferredFoot,
    required this.skills,
    this.pathImagePlayerBody = "assets/football/default.png",
    this.value = 0.0,
    this.wage = 0.0,
  });
}
