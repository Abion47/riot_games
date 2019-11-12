import 'package:equatable/equatable.dart';

import 'mastery_dto.dart';
import 'participant_stats_dto.dart';
import 'participant_timeline_dto.dart';
import 'rune_dto.dart';

class ParticipantDTO extends Equatable {
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

  /// Participant statistics.
  final ParticipantStatsDTO stats;

  /// The ID of the participant.
  final int participantId;

  /// List of legacy Rune information. Not included for matches played
  /// with Runes Reforged.
  final List<RuneDTO> runes;

  /// Participant timeline data.
  final ParticipantTimelineDTO timeline;

  /// 100 for blue side. 200 for red side.
  final int teamId;

  /// Second Summoner Spell id.
  final int spell2Id;

  /// List of legacy Mastery information. Not included for matches played
  /// with Runes Reforged.
  final List<MasteryDTO> masteries;

  /// Highest ranked tier achieved for the previous season in a specific
  /// subset of queueIds, if any, otherwise null. Used to display border in
  /// game loading screen. Please refer to the Ranked Info documentation.
  /// (Legal values: CHALLENGER, MASTER, DIAMOND, PLATINUM, GOLD, SILVER,
  /// BRONZE, UNRANKED)
  final String highestAchievedSeasonTier;

  /// First Summoner Spell id.
  final int spell1Id;

  /// The ID of the champion played.
  final int championId;

  factory ParticipantDTO.fromJson(Map<String, dynamic> json) => ParticipantDTO(
        stats: json['stats'] == null
            ? null
            : ParticipantStatsDTO.fromJson(json['stats']),
        participantId: json['participantId'] ?? 0,
        runes: json['runes'] == null
            ? null
            : json['runes'].map<RuneDTO>((r) => RuneDTO.fromJson(r)).toList(),
        timeline: json['timeline'] == null
            ? null
            : ParticipantTimelineDTO.fromJson(json['timeline']),
        teamId: json['teamId'] ?? 0,
        spell2Id: json['spell2Id'] ?? 0,
        masteries: json['masteries'] == null
            ? null
            : json['masteries']
                .map<MasteryDTO>((r) => MasteryDTO.fromJson(r))
                .toList(),
        highestAchievedSeasonTier: json['highestAchievedSeasonTier'] ?? '',
        spell1Id: json['spell1Id'] ?? 0,
        championId: json['championId'] ?? 0,
      );

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

  @override
  String toString() =>
      'ParticipantDTO ' +
      {
        'stats': stats,
        'participantId': participantId,
        'runes': runes,
        'timeline': timeline,
        'teamId': teamId,
        'spell2Id': spell2Id,
        'masteries': masteries,
        'highestAchievedSeasonTier': highestAchievedSeasonTier,
        'spell1Id': spell1Id,
        'championId': championId,
      }.toString();
}
