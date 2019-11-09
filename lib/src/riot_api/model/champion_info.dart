import 'package:equatable/equatable.dart';

class ChampionInfo extends Equatable {
  ChampionInfo({
    this.freeChampionIdsForNewPlayers,
    this.freeChampionIds,
    this.maxNewPlayerLevel,
  });

  /// List of champions that are freely available to new players (players
  /// up to the level specified by [maxNewPlayerLevel]).
  final List<int> freeChampionIdsForNewPlayers;

  /// List of champions that are freely available in the current rotation.
  final List<int> freeChampionIds;

  /// The maximum level that a player can be to be able to use the new
  /// player free champion list.
  final int maxNewPlayerLevel;

  factory ChampionInfo.fromJson(Map<String, dynamic> json) => ChampionInfo(
        freeChampionIds: (json['freeChampionIds'] ?? <int>[]).cast<int>(),
        freeChampionIdsForNewPlayers:
            (json['freeChampionIds'] ?? <int>[]).cast<int>(),
        maxNewPlayerLevel: json['maxNewPlayerLevel'] ?? 0,
      );

  @override
  List<Object> get props => [
        this.freeChampionIdsForNewPlayers,
        this.freeChampionIds,
        this.maxNewPlayerLevel,
      ];

  @override
  String toString() =>
      'ChampionInfo ' +
      {
        'freeChampionIds': freeChampionIds,
        'freeChampionIdsForNewPlayers': freeChampionIdsForNewPlayers,
        'maxNewPlayerLevel': maxNewPlayerLevel,
      }.toString();
}
