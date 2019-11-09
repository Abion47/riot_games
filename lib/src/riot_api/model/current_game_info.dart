import 'package:equatable/equatable.dart';

import 'banned_champion.dart';
import 'current_game_participant.dart';
import 'observer.dart';

class CurrentGameInfo extends Equatable {
  final int gameId;
  final int gameStartTime;
  final String platformId;
  final String gameMode;
  final int mapId;
  final String gameType;
  final List<BannedChampion> bannedChampions;
  final Observer observer;
  final List<CurrentGameParticipant> participants;
  final int gameLength;
  final int gameQueueConfigId;

  CurrentGameInfo({
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
