import 'package:equatable/equatable.dart';

import 'mini_series_dto.dart';

class LeagueEntryDTO extends Equatable {
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

  /// The type of the queue.
  final String queueType;

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

  /// The division rank of the league.
  final String rank;

  /// The ID of the league.
  final String leagueId;

  /// True if the player hasn't played any games recently.
  final bool inactive;

  /// True if the player joined the league division recently.
  final bool freshBlood;

  /// The tier of the league.
  final String tier;

  /// Player's summoner ID (Encrypted)
  final String summonerId;

  /// How many points (LP) the player has within the league.
  final int leaguePoints;

  factory LeagueEntryDTO.fromJson(Map<String, dynamic> json) => LeagueEntryDTO(
        queueType: json['queueType'] ?? '',
        summonerName: json['summonerName'] ?? '',
        hotStreak: json['hotStreak'] ?? false,
        wins: json['wins'] ?? 0,
        veteran: json['veteran'] ?? false,
        losses: json['losses'] ?? 0,
        rank: json['rank'] ?? '',
        leagueId: json['leagueId'] ?? '',
        inactive: json['inactive'] ?? false,
        freshBlood: json['freshBlood'] ?? false,
        tier: json['tier'] ?? '',
        summonerId: json['summonerId'] ?? '',
        leaguePoints: json['leaguePoints'] ?? 0,
        miniSeries: json['miniSeries'] == null
            ? null
            : MiniSeriesDTO.fromJson(json['miniSeries']),
      );

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

  @override
  String toString() =>
      'LeagueEntryDTO ' +
      {
        'queueType': this.queueType,
        'summonerName': this.summonerName,
        'hotStreak': this.hotStreak,
        'miniSeries': this.miniSeries,
        'wins': this.wins,
        'veteran': this.veteran,
        'losses': this.losses,
        'rank': this.rank,
        'leagueId': this.leagueId,
        'inactive': this.inactive,
        'freshBlood': this.freshBlood,
        'tier': this.tier,
        'summonerId': this.summonerId,
        'leaguePoints': this.leaguePoints,
      }.toString();
}
