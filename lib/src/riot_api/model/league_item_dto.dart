import 'package:equatable/equatable.dart';

import 'mini_series_dto.dart';

class LeagueItemDTO extends Equatable {
  final String summonerName;
  final bool hotStreak;
  final MiniSeriesDTO miniSeries;
  final int wins;
  final bool veteran;
  final int losses;
  final bool freshBlood;
  final bool inactive;
  final String rank;
  final String summonerId;
  final int leaguePoints;

  LeagueItemDTO({
    this.summonerName,
    this.hotStreak,
    this.miniSeries,
    this.wins,
    this.veteran,
    this.losses,
    this.freshBlood,
    this.inactive,
    this.rank,
    this.summonerId,
    this.leaguePoints,
  });

  @override
  List<Object> get props => [
        this.summonerName,
        this.hotStreak,
        this.miniSeries,
        this.wins,
        this.veteran,
        this.losses,
        this.freshBlood,
        this.inactive,
        this.rank,
        this.summonerId,
        this.leaguePoints,
      ];
}
