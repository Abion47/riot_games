import 'package:equatable/equatable.dart';

class MatchReferenceDTO extends Equatable {
  final String lane;
  final int gameId;
  final int champion;
  final String platformId;
  final int season;
  final int queue;
  final String role;
  final int timestamp;

  MatchReferenceDTO({
    this.lane,
    this.gameId,
    this.champion,
    this.platformId,
    this.season,
    this.queue,
    this.role,
    this.timestamp,
  });

  @override
  List<Object> get props => [
        this.lane,
        this.gameId,
        this.champion,
        this.platformId,
        this.season,
        this.queue,
        this.role,
        this.timestamp,
      ];
}
