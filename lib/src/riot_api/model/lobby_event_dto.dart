import 'package:equatable/equatable.dart';

class LobbyEventDTO extends Equatable {
  final String eventType;
  final String summonerId;
  final String timestamp;

  LobbyEventDTO({
    this.eventType,
    this.summonerId,
    this.timestamp,
  });

  @override
  List<Object> get props => [
        this.eventType,
        this.summonerId,
        this.timestamp,
      ];
}
