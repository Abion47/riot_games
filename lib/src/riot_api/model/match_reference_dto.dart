import 'package:equatable/equatable.dart';

class MatchReferenceDTO extends Equatable {
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

  ///
  final String lane;

  ///
  final int gameId;

  ///
  final int champion;

  ///
  final String platformId;

  ///
  final int season;

  ///
  final int queue;

  ///
  final String role;

  ///
  final int timestamp;

  factory MatchReferenceDTO.fromJson(Map<String, dynamic> json) =>
      MatchReferenceDTO(
        lane: json['lane'] ?? '',
        gameId: json['gameId'] ?? 0,
        champion: json['champion'] ?? 0,
        platformId: json['platformId'] ?? '',
        season: json['season'] ?? 0,
        queue: json['queue'] ?? 0,
        role: json['role'] ?? '',
        timestamp: json['timestamp'] ?? 0,
      );

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

  @override
  String toString() =>
      'MatchReferenceDTO ' +
      {
        'lane': lane,
        'gameId': gameId,
        'champion': champion,
        'platformId': platformId,
        'season': season,
        'queue': queue,
        'role': role,
        'timestamp': timestamp,
      }.toString();
}
