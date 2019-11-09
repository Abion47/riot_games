import 'package:equatable/equatable.dart';

class ChampionMasteryDTO extends Equatable {
  ChampionMasteryDTO({
    this.chestGranted,
    this.championLevel,
    this.championPoints,
    this.championId,
    this.championPointsUntilNextLevel,
    this.lastPlayTime,
    this.tokensEarned,
    this.championPointsSinceLastLevel,
    this.summonerId,
  });

  /// Is chest granted for this champion or not in current season.
  final bool chestGranted;

  /// Champion level for specified player and champion combination.
  final int championLevel;

  /// Total number of champion points for this player and champion combination - they are used to determine championLevel.
  final int championPoints;

  /// Champion ID for this entry.
  final int championId;

  /// Number of points needed to achieve next level. Zero if player reached maximum champion level for this champion.
  final int championPointsUntilNextLevel;

  /// Last time this champion was played by this player - in Unix milliseconds time format.
  final int lastPlayTime;

  /// The token earned for this champion to levelup.
  final int tokensEarned;

  /// Number of points earned since current level has been achieved.
  final int championPointsSinceLastLevel;

  /// Summoner ID for this entry. (Encrypted)
  final String summonerId;

  factory ChampionMasteryDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) throw ArgumentError.notNull('json');
    return ChampionMasteryDTO(
      chestGranted: json["chestGranted"] ?? false,
      championLevel: json["championLevel"] ?? 0,
      championPoints: json["championPoints"] ?? 0,
      championId: json["championId"] ?? 0,
      championPointsUntilNextLevel: json["championPointsUntilNextLevel"] ?? 0,
      lastPlayTime: json["lastPlayTime"] ?? 0,
      tokensEarned: json["tokensEarned"] ?? 0,
      championPointsSinceLastLevel: json["championPointsSinceLastLevel"] ?? 0,
      summonerId: json["summonerId"] ?? '',
    );
  }

  @override
  List<Object> get props => [
        this.chestGranted,
        this.championLevel,
        this.championPoints,
        this.championId,
        this.championPointsUntilNextLevel,
        this.lastPlayTime,
        this.tokensEarned,
        this.championPointsSinceLastLevel,
        this.summonerId,
      ];

  @override
  String toString() =>
      'ChampionMasteryDTO ' +
      {
        'chestGranted': chestGranted,
        'championLevel': championLevel,
        'championPoints': championPoints,
        'championId': championId,
        'championPointsUntilNextLevel': championPointsUntilNextLevel,
        'lastPlayTime': lastPlayTime,
        'tokensEarned': tokensEarned,
        'championPointsSinceLastLevel': championPointsSinceLastLevel,
        'summonerId': summonerId,
      }.toString();
}
