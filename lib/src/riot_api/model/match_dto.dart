import 'package:equatable/equatable.dart';

import 'participant_dto.dart';
import 'participant_identity_dto.dart';
import 'team_stats_dto.dart';

class MatchDTO extends Equatable {
  final int seasonId;
  final int queueId;
  final int gameId;
  final List<ParticipantIdentityDTO> participantIdentities;
  final String gameVersion;
  final String platformId;
  final String gameMode;
  final int mapId;
  final String gameType;
  final List<TeamStatsDTO> teams;
  final List<ParticipantDTO> participants;
  final int gameDuration;

  MatchDTO({
    this.seasonId,
    this.queueId,
    this.gameId,
    this.participantIdentities,
    this.gameVersion,
    this.platformId,
    this.gameMode,
    this.mapId,
    this.gameType,
    this.teams,
    this.participants,
    this.gameDuration,
  });

  @override
  List<Object> get props => [
        this.seasonId,
        this.queueId,
        this.gameId,
        this.participantIdentities,
        this.gameVersion,
        this.platformId,
        this.gameMode,
        this.mapId,
        this.gameType,
        this.teams,
        this.participants,
        this.gameDuration,
      ];
}
