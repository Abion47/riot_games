import 'package:equatable/equatable.dart';

import 'participant_dto.dart';
import 'participant_identity_dto.dart';
import 'team_stats_dto.dart';

class MatchDTO extends Equatable {
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
    this.gameCreation,
  });

  /// Please refer to the Game Constants documentation.
  final int seasonId;

  /// Please refer to the Game Constants documentation.
  final int queueId;

  ///
  final int gameId;

  /// Participant identity information.
  final List<ParticipantIdentityDTO> participantIdentities;

  /// The major.minor version typically indicates the patch the match
  /// was played on.
  final String gameVersion;

  /// Platform where the match was played.
  final String platformId;

  /// Please refer to the Game Constants documentation.
  final String gameMode;

  /// Please refer to the Game Constants documentation.
  final int mapId;

  /// Please refer to the Game Constants documentation.
  final String gameType;

  /// Team information.
  final List<TeamStatsDTO> teams;

  /// Participant information.
  final List<ParticipantDTO> participants;

  /// Match duration in seconds.
  final int gameDuration;

  /// Designates the timestamp when champion select ended and the loading
  /// screen appeared, NOT when the game timer was at 0:00.
  final int gameCreation;

  factory MatchDTO.fromJson(Map<String, dynamic> json) => MatchDTO(
        seasonId: json['seasonId'] ?? 0,
        queueId: json['queueId'] ?? 0,
        gameId: json['gameId'] ?? 0,
        participantIdentities: json['participantIdentities'] == null
            ? null
            : json['participantIdentities']
                .map<ParticipantIdentityDTO>(
                    (p) => ParticipantIdentityDTO.fromJson(p))
                .toList(),
        gameVersion: json['gameVersion'] ?? '',
        platformId: json['platformId'] ?? '',
        gameMode: json['gameMode'] ?? '',
        mapId: json['mapId'] ?? 0,
        gameType: json['gameType'] ?? '',
        teams: json['teams'] == null
            ? null
            : json['teams']
                .map<TeamStatsDTO>((t) => TeamStatsDTO.fromJson(t))
                .toList(),
        participants: json['participants'] == null
            ? null
            : json['participants']
                .map<ParticipantDTO>((p) => ParticipantDTO.fromJson(p))
                .toList(),
        gameDuration: json['gameDuration'] ?? 0,
        gameCreation: json['gameCreation'] ?? 0,
      );

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
        this.gameCreation,
      ];

  @override
  String toString() =>
      'MatchDTO ' +
      {
        'seasonId': seasonId,
        'queueId': queueId,
        'gameId': gameId,
        'participantIdentities': participantIdentities,
        'gameVersion': gameVersion,
        'platformId': platformId,
        'gameMode': gameMode,
        'mapId': mapId,
        'gameType': gameType,
        'teams': teams,
        'participants': participants,
        'gameDuration': gameDuration,
        'gameCreation': gameCreation,
      }.toString();
}
