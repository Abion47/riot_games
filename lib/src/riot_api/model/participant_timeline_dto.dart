import 'package:equatable/equatable.dart';

class ParticipantTimelineDTO extends Equatable {
  final String lane;
  final int participantId;
  final Map<String, double> csDiffPerMinDeltas;
  final Map<String, double> goldPerMinDeltas;
  final Map<String, double> xpDiffPerMinDeltas;
  final Map<String, double> creepsPerMinDeltas;
  final Map<String, double> xpPerMinDeltas;
  final String role;
  final Map<String, double> damageTakenDiffPerMinDeltas;
  final Map<String, double> damageTakenPerMinDeltas;

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
}
