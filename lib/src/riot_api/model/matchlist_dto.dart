import 'package:equatable/equatable.dart';

import 'match_reference_dto.dart';

class MatchlistDTO extends Equatable {
  final List<MatchReferenceDTO> matches;
  final int totalGames;
  final int startIndex;
  final int endIndex;

  MatchlistDTO({
    this.matches,
    this.totalGames,
    this.startIndex,
    this.endIndex,
  });

  @override
  List<Object> get props => [
        this.matches,
        this.totalGames,
        this.startIndex,
        this.endIndex,
      ];
}
