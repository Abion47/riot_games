import 'package:equatable/equatable.dart';

import 'lobby_event_dto.dart';

class LobbyEventDTOWrapper extends Equatable {
  final List<LobbyEventDTO> eventList;

  LobbyEventDTOWrapper({this.eventList});

  @override
  List<Object> get props => [LobbyEventDTOWrapper];
}
