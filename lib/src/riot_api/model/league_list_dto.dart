import 'package:equatable/equatable.dart';

import 'league_item_dto.dart';

class LeagueListDTO extends Equatable {
  final String leagueId;
  final String tier;
  final List<LeagueItemDTO> entries;
  final String queue;
  final String name;

  LeagueListDTO({
    this.leagueId,
    this.tier,
    this.entries,
    this.queue,
    this.name,
  });

  @override
  List<Object> get props => [
        this.leagueId,
        this.tier,
        this.entries,
        this.queue,
        this.name,
      ];
}
