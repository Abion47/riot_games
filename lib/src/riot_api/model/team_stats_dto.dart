import 'package:equatable/equatable.dart';

import 'team_bans_dto.dart';

class TeamStatsDTO extends Equatable {
  final bool firstDragon;
  final bool firstInhibitor;
  final List<TeamBansDTO> bans;
  final int baronKills;
  final bool firstRiftHerald;
  final bool firstBaron;
  final int riftHeraldKills;
  final bool firstBlood;
  final int teamId;
  final bool firstTower;
  final int vilemawKills;
  final int inhibitorKills;
  final int towerKills;
  final int dominionVictoryScore;
  final String win;
  final int dragonKills;

  TeamStatsDTO({
    this.firstDragon,
    this.firstInhibitor,
    this.bans,
    this.baronKills,
    this.firstRiftHerald,
    this.firstBaron,
    this.riftHeraldKills,
    this.firstBlood,
    this.teamId,
    this.firstTower,
    this.vilemawKills,
    this.inhibitorKills,
    this.towerKills,
    this.dominionVictoryScore,
    this.win,
    this.dragonKills,
  });

  @override
  List<Object> get props => [
        this.firstDragon,
        this.firstInhibitor,
        this.bans,
        this.baronKills,
        this.firstRiftHerald,
        this.firstBaron,
        this.riftHeraldKills,
        this.firstBlood,
        this.teamId,
        this.firstTower,
        this.vilemawKills,
        this.inhibitorKills,
        this.towerKills,
        this.dominionVictoryScore,
        this.win,
        this.dragonKills,
      ];
}
