import 'package:equatable/equatable.dart';

import 'mini_series_exp_dto.dart';

class LeagueEntryExpDTO extends Equatable {
  final String queueType;
  final String summonerName;
  final bool hotStreak;
  final MiniSeriesExpDTO miniSeries;
  final int wins;
  final bool veteran;
  final int losses;
  final String rank;
  final String leagueId;
  final bool inactive;
  final bool freshBlood;
  final String tier;
  final String summonerId;
  final int leaguePoints;

  LeagueEntryExpDTO({
    this.queueType,
    this.summonerName,
    this.hotStreak,
    this.miniSeries,
    this.wins,
    this.veteran,
    this.losses,
    this.rank,
    this.leagueId,
    this.inactive,
    this.freshBlood,
    this.tier,
    this.summonerId,
    this.leaguePoints,
  });

  @override
  List<Object> get props => [
        this.queueType,
        this.summonerName,
        this.hotStreak,
        this.miniSeries,
        this.wins,
        this.veteran,
        this.losses,
        this.rank,
        this.leagueId,
        this.inactive,
        this.freshBlood,
        this.tier,
        this.summonerId,
        this.leaguePoints,
      ];
}
