import 'package:equatable/equatable.dart';

import 'match_frame_dto.dart';

class MatchTimelineDTO extends Equatable {
  final List<MatchFrameDTO> frames;
  final int frameInterval;

  MatchTimelineDTO({
    this.frames,
    this.frameInterval,
  });

  @override
  List<Object> get props => [
        this.frames,
        this.frameInterval,
      ];
}
