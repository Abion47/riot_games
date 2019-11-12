import 'package:equatable/equatable.dart';

import 'mini_series_dto.dart';

class LeagueItemDTO extends Equatable {
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

  /// The player's name.
  final String summonerName;

  /// True if the player is currently on a winning streak.
  final bool hotStreak;

  /// A data object describing if the player is in a mini series for promotion.
  final MiniSeriesDTO miniSeries;

  /// Number of wins the player has gained since joining the league.
  final int wins;

  /// True if the player has been in the league for a long time.
  final bool veteran;

  /// Number of losses the player has gained since joining the league.
  final int losses;

  /// True if the player joined the league division recently.
  final bool freshBlood;

  /// True if the player hasn't played any games recently.
  final bool inactive;

  /// The division rank of the league.
  final String rank;

  /// Player's summoner ID (Encrypted)
  final String summonerId;

  /// How many points (LP) the player has within the league.
  final int leaguePoints;

  factory LeagueItemDTO.fromJson(Map<String, dynamic> json) => LeagueItemDTO(
        summonerName: json['summonerName'] ?? '',
        hotStreak: json['hotStreak'] ?? false,
        wins: json['wins'] ?? 0,
        veteran: json['veteran'] ?? false,
        losses: json['losses'] ?? 0,
        freshBlood: json['freshBlood'] ?? false,
        inactive: json['inactive'] ?? false,
        rank: json['rank'] ?? '',
        summonerId: json['summonerId'] ?? '',
        leaguePoints: json['leaguePoints'] ?? 0,
        miniSeries: json['miniSeries'] == null
            ? null
            : MiniSeriesDTO.fromJson(json['miniSeries']),
      );

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

  @override
  String toString() =>
      'LeagueItemDTO ' +
      {
        'summonerName': this.summonerName,
        'hotStreak': this.hotStreak,
        'miniSeries': this.miniSeries,
        'wins': this.wins,
        'veteran': this.veteran,
        'losses': this.losses,
        'rank': this.rank,
        'inactive': this.inactive,
        'freshBlood': this.freshBlood,
        'summonerId': this.summonerId,
        'leaguePoints': this.leaguePoints,
      }.toString();
}
