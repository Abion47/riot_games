import 'package:equatable/equatable.dart';

import 'league_item_dto.dart';

class LeagueListDTO extends Equatable {
  LeagueListDTO({
    this.leagueId,
    this.tier,
    this.entries,
    this.queue,
    this.name,
  });

  factory LeagueListDTO.fromJson(Map<String, dynamic> json) => LeagueListDTO(
        leagueId: json['leagueId'] ?? '',
        tier: json['tier'] ?? '',
        queue: json['queue'] ?? '',
        name: json['name'] ?? '',
        entries: json['entries'] == null
            ? null
            : (json['entries'] as List)
                .map((e) => LeagueItemDTO.fromJson(e))
                .toList(),
      );

  /// The ID of the league.
  final String leagueId;

  /// The tier of the league.
  final String tier;

  /// The list of player entries for the league
  final List<LeagueItemDTO> entries;

  /// The queue for the league. (See [RiotApi.queues].)
  final String queue;

  /// The name of the league.
  final String name;

  @override
  List<Object> get props => [
        this.leagueId,
        this.tier,
        this.entries,
        this.queue,
        this.name,
      ];

  @override
  String toString() =>
      'LeagueListDTO ' +
      {
        'name': name,
        'leagueId': leagueId,
        'tier': tier,
        'queue': queue,
        'entries': entries,
      }.toString();
}
