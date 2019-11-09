import 'package:equatable/equatable.dart';

import 'mini_series_dto.dart';

class LeagueEntryDTO extends Equatable {
  final String queueType;
  final String summonerName;
  final bool hotStreak;
  final MiniSeriesDTO miniSeries;
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

  LeagueEntryDTO({
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
