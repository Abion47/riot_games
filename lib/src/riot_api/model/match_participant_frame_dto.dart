import 'package:equatable/equatable.dart';

import 'match_position_dto.dart';

class MatchParticipantFrameDTO extends Equatable {
  final int totalGold;
  final int teamScore;
  final int participantId;
  final int level;
  final int currentGold;
  final int minionsKilled;
  final int dominionScore;
  final MatchPositionDTO position;
  final int xp;
  final int jungleMinionKilled;

  MatchParticipantFrameDTO({
    this.totalGold,
    this.teamScore,
    this.participantId,
    this.level,
    this.currentGold,
    this.minionsKilled,
    this.dominionScore,
    this.position,
    this.xp,
    this.jungleMinionKilled,
  });

  @override
  List<Object> get props => [
        this.totalGold,
        this.teamScore,
        this.participantId,
        this.level,
        this.currentGold,
        this.minionsKilled,
        this.dominionScore,
        this.position,
        this.xp,
        this.jungleMinionKilled,
      ];
}
