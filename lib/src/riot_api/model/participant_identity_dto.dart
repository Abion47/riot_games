import 'package:equatable/equatable.dart';
import 'package:riot_games/src/riot_api/model/player_dto.dart';

class ParticipantIdentityDTO extends Equatable {
  final PlayerDTO player;
  final int participantId;

  ParticipantIdentityDTO({
    this.player,
    this.participantId,
  });

  @override
  List<Object> get props => [
        this.player,
        this.participantId,
      ];
}
