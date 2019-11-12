import 'package:equatable/equatable.dart';

class ParticipantTimelineDTO extends Equatable {
  ParticipantTimelineDTO({
    this.lane,
    this.participantId,
    this.csDiffPerMinDeltas,
    this.goldPerMinDeltas,
    this.xpDiffPerMinDeltas,
    this.creepsPerMinDeltas,
    this.xpPerMinDeltas,
    this.role,
    this.damageTakenDiffPerMinDeltas,
    this.damageTakenPerMinDeltas,
  });

  /// Participant's calculated lane. MID and BOT are legacy values.
  /// (Legal values: MID, MIDDLE, TOP, JUNGLE, BOT, BOTTOM)
  final String lane;

  /// The ID of the participant.
  final int participantId;

  /// Creep score difference versus the calculated lane opponent(s)
  /// for a specified period.
  final Map<String, double> csDiffPerMinDeltas;

  /// Gold for a specified period.
  final Map<String, double> goldPerMinDeltas;

  /// Experience difference versus the calculated lane opponent(s)
  /// for a specified period.
  final Map<String, double> xpDiffPerMinDeltas;

  /// Creeps for a specified period.
  final Map<String, double> creepsPerMinDeltas;

  /// Experience change for a specified period.
  final Map<String, double> xpPerMinDeltas;

  /// Participant's calculated role. (Legal values: DUO, NONE, SOLO,
  /// DUO_CARRY, DUO_SUPPORT)
  final String role;

  /// Damage taken difference versus the calculated lane opponent(s)
  /// for a specified period.
  final Map<String, double> damageTakenDiffPerMinDeltas;

  /// Damage taken for a specified period.
  final Map<String, double> damageTakenPerMinDeltas;

  factory ParticipantTimelineDTO.fromJson(Map<String, dynamic> json) =>
      ParticipantTimelineDTO(
        lane: json['lane'] ?? '',
        participantId: json['participantId'] ?? 0,
        csDiffPerMinDeltas: json['csDiffPerMinDeltas'] == null
            ? null
            : json['csDiffPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        goldPerMinDeltas: json['goldPerMinDeltas'] == null
            ? null
            : json['goldPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        xpDiffPerMinDeltas: json['xpDiffPerMinDeltas'] == null
            ? null
            : json['xpDiffPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        creepsPerMinDeltas: json['creepsPerMinDeltas'] == null
            ? null
            : json['creepsPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        xpPerMinDeltas: json['xpPerMinDeltas'] == null
            ? null
            : json['xpPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        role: json['role'] ?? '',
        damageTakenDiffPerMinDeltas: json['damageTakenDiffPerMinDeltas'] == null
            ? null
            : json['damageTakenDiffPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
        damageTakenPerMinDeltas: json['damageTakenPerMinDeltas'] == null
            ? null
            : json['damageTakenPerMinDeltas'].map<String, double>(
                (k, v) => MapEntry<String, double>(k, v.toDouble())),
      );

  @override
  List<Object> get props => [
        this.lane,
        this.participantId,
        this.csDiffPerMinDeltas,
        this.goldPerMinDeltas,
        this.xpDiffPerMinDeltas,
        this.creepsPerMinDeltas,
        this.xpPerMinDeltas,
        this.role,
        this.damageTakenDiffPerMinDeltas,
        this.damageTakenPerMinDeltas,
      ];

  @override
  String toString() =>
      'ParticipantTimelineDTO ' +
      {
        'lane': lane,
        'participantId': participantId,
        'csDiffPerMinDeltas': csDiffPerMinDeltas,
        'goldPerMinDeltas': goldPerMinDeltas,
        'xpDiffPerMinDeltas': xpDiffPerMinDeltas,
        'creepsPerMinDeltas': creepsPerMinDeltas,
        'xpPerMinDeltas': xpPerMinDeltas,
        'role': role,
        'damageTakenDiffPerMinDeltas': damageTakenDiffPerMinDeltas,
        'damageTakenPerMinDeltas': damageTakenPerMinDeltas,
      }.toString();
}
