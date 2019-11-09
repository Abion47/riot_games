import 'package:equatable/equatable.dart';

import 'match_event_dto.dart';
import 'match_participant_frame_dto.dart';

class MatchFrameDTO extends Equatable {
  final int timestamp;
  final Map<String, MatchParticipantFrameDTO> participantFrames;
  final List<MatchEventDTO> events;

  MatchFrameDTO({
    this.timestamp,
    this.participantFrames,
    this.events,
  });

  @override
  List<Object> get props => [
        this.timestamp,
        this.participantFrames,
        this.events,
      ];
}
