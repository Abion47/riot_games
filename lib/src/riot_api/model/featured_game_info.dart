import 'package:equatable/equatable.dart';

import 'banned_champion.dart';
import 'observer.dart';
import 'participant.dart';

class FeaturedGameInfo extends Equatable {
  final int gameId;
  final int gameStartTime;
  final String platformId;
  final String gameMode;
  final int mapId;
  final String gameType;
  final List<BannedChampion> bannedChampions;
  final Observer observer;
  final List<Participant> participants;
  final int gameLength;
  final int gameQueueConfigId;

  FeaturedGameInfo({
    this.gameId,
    this.gameStartTime,
    this.platformId,
    this.gameMode,
    this.mapId,
    this.gameType,
    this.bannedChampions,
    this.observer,
    this.participants,
    this.gameLength,
    this.gameQueueConfigId,
  });

  @override
  List<Object> get props => [
        this.gameId,
        this.gameStartTime,
        this.platformId,
        this.gameMode,
        this.mapId,
        this.gameType,
        this.bannedChampions,
        this.observer,
        this.participants,
        this.gameLength,
        this.gameQueueConfigId,
      ];
}
