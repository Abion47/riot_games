import 'package:equatable/equatable.dart';

import 'match_position_dto.dart';

class MatchEventDTO extends Equatable {
  final String eventType;
  final String towerType;
  final int teamId;
  final String ascendedType;
  final int killerId;
  final String levelUpType;
  final String pointCaptured;
  final List<int> assistingParticipantIds;
  final String wardType;
  final String monsterType;
  final String type;
  final int skillShot;
  final int victimId;
  final int timestamp;
  final int afterId;
  final String monsterSubType;
  final String laneType;
  final int itemId;
  final int participantId;
  final String buildingType;
  final int creatorId;
  final MatchPositionDTO position;
  final int beforeId;

  MatchEventDTO({
    this.eventType,
    this.towerType,
    this.teamId,
    this.ascendedType,
    this.killerId,
    this.levelUpType,
    this.pointCaptured,
    this.assistingParticipantIds,
    this.wardType,
    this.monsterType,
    this.type,
    this.skillShot,
    this.victimId,
    this.timestamp,
    this.afterId,
    this.monsterSubType,
    this.laneType,
    this.itemId,
    this.participantId,
    this.buildingType,
    this.creatorId,
    this.position,
    this.beforeId,
  });

  @override
  List<Object> get props => [
        this.eventType,
        this.towerType,
        this.teamId,
        this.ascendedType,
        this.killerId,
        this.levelUpType,
        this.pointCaptured,
        this.assistingParticipantIds,
        this.wardType,
        this.monsterType,
        this.type,
        this.skillShot,
        this.victimId,
        this.timestamp,
        this.afterId,
        this.monsterSubType,
        this.laneType,
        this.itemId,
        this.participantId,
        this.buildingType,
        this.creatorId,
        this.position,
        this.beforeId,
      ];
}
