import 'package:equatable/equatable.dart';

import 'team_bans_dto.dart';

class TeamStatsDTO extends Equatable {
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

  /// Flag indicating whether or not the team scored the first Dragon kill.
  final bool firstDragon;

  /// Flag indicating whether or not the team destroyed the first inhibitor.
  final bool firstInhibitor;

  /// If match queueId has a draft, contains banned champion data, otherwise
  /// empty.
  final List<TeamBansDTO> bans;

  /// Number of times the team killed Baron.
  final int baronKills;

  /// Flag indicating whether or not the team scored the first Rift Herald
  /// kill.
  final bool firstRiftHerald;

  /// Flag indicating whether or not the team scored the first Baron kill.
  final bool firstBaron;

  /// Number of times the team killed Rift Herald.
  final int riftHeraldKills;

  /// Flag indicating whether or not the team scored the first blood.
  final bool firstBlood;

  /// 100 for blue side. 200 for red side.
  final int teamId;

  /// Flag indicating whether or not the team destroyed the first
  /// tower.
  final bool firstTower;

  /// Number of times the team killed Vilemaw.
  final int vilemawKills;

  /// Number of inhibitors the team destroyed.
  final int inhibitorKills;

  /// Number of towers the team destroyed.
  final int towerKills;

  /// For Dominion matches, specifies the points the team had at
  /// game end. (Legacy)
  final int dominionVictoryScore;

  /// String indicating whether or not the team won. There are only
  /// two values visibile in public match history. (Legal values: Fail, Win)
  final String win;

  /// Number of times the team killed Dragon.
  final int dragonKills;

  factory TeamStatsDTO.fromJson(Map<String, dynamic> json) => TeamStatsDTO(
        firstDragon: json['firstDragon'] ?? false,
        firstInhibitor: json['firstInhibitor'] ?? false,
        bans: json['bans'] == null
            ? null
            : json['bans']
                .map<TeamBansDTO>((tb) => TeamBansDTO.fromJson(tb))
                .toList(),
        baronKills: json['baronKills'] ?? 0,
        firstRiftHerald: json['firstRiftHerald'] ?? false,
        firstBaron: json['firstBaron'] ?? false,
        riftHeraldKills: json['riftHeraldKills'] ?? 0,
        firstBlood: json['firstBlood'] ?? false,
        teamId: json['teamId'] ?? 0,
        firstTower: json['firstTower'] ?? false,
        vilemawKills: json['vilemawKills'] ?? 0,
        inhibitorKills: json['inhibitorKills'] ?? 0,
        towerKills: json['towerKills'] ?? 0,
        dominionVictoryScore: json['dominionVictoryScore'] ?? 0,
        win: json['win'] ?? '',
        dragonKills: json['dragonKills'] ?? 0,
      );

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

  @override
  String toString() =>
      'TeamStatsDTO ' +
      {
        'firstDragon': firstDragon,
        'firstInhibitor': firstInhibitor,
        'bans': bans,
        'baronKills': baronKills,
        'firstRiftHerald': firstRiftHerald,
        'firstBaron': firstBaron,
        'riftHeraldKills': riftHeraldKills,
        'firstBlood': firstBlood,
        'teamId': teamId,
        'firstTower': firstTower,
        'vilemawKills': vilemawKills,
        'inhibitorKills': inhibitorKills,
        'towerKills': towerKills,
        'dominionVictoryScore': dominionVictoryScore,
        'win': win,
        'dragonKills': dragonKills,
      }.toString();
}
