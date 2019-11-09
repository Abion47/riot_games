import 'package:equatable/equatable.dart';

import 'mastery_dto.dart';
import 'participant_stats_dto.dart';
import 'participant_timeline_dto.dart';
import 'rune_dto.dart';

class ParticipantDTO extends Equatable {
  final ParticipantStatsDTO stats;
  final int participantId;
  final List<RuneDTO> runes;
  final ParticipantTimelineDTO timeline;
  final int teamId;
  final int spell2Id;
  final List<MasteryDTO> masteries;
  final String highestAchievedSeasonTier;
  final int spell1Id;
  final int championId;

  ParticipantDTO({
    this.stats,
    this.participantId,
    this.runes,
    this.timeline,
    this.teamId,
    this.spell2Id,
    this.masteries,
    this.highestAchievedSeasonTier,
    this.spell1Id,
    this.championId,
  });

  @override
  List<Object> get props => [
        this.stats,
        this.participantId,
        this.runes,
        this.timeline,
        this.teamId,
        this.spell2Id,
        this.masteries,
        this.highestAchievedSeasonTier,
        this.spell1Id,
        this.championId,
      ];
}
