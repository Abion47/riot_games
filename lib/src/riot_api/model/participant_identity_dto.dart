import 'package:equatable/equatable.dart';
import 'package:riot_games/src/riot_api/model/player_dto.dart';

class ParticipantIdentityDTO extends Equatable {
  ParticipantIdentityDTO({
    this.player,
    this.participantId,
  });

  /// Player data for the participant.
  final PlayerDTO player;

  /// The ID of the participant.
  final int participantId;

  factory ParticipantIdentityDTO.fromJson(Map<String, dynamic> json) =>
      ParticipantIdentityDTO(
        participantId: json['participantId'] ?? 0,
        player:
            json['player'] == null ? null : PlayerDTO.fromJson(json['player']),
      );

  @override
  List<Object> get props => [
        this.player,
        this.participantId,
      ];

  @override
  String toString() =>
      'ParticipantIdentityDTO ' +
      {
        'participantId': participantId,
        'player': player,
      }.toString();
}
