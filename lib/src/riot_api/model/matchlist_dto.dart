import 'package:equatable/equatable.dart';

import 'match_reference_dto.dart';

class MatchlistDTO extends Equatable {
  MatchlistDTO({
    this.matches,
    this.totalGames,
    this.startIndex,
    this.endIndex,
  });

  ///
  final List<MatchReferenceDTO> matches;

  /// Total number of games returned by the API.
  final int totalGames;

  /// The index of the game starting the list.
  final int startIndex;

  /// The index of the game ending the list.
  final int endIndex;

  factory MatchlistDTO.fromJson(Map<String, dynamic> json) => MatchlistDTO(
        matches: json['matches'] == null
            ? null
            : json['matches']
                .map<MatchReferenceDTO>((m) => MatchReferenceDTO.fromJson(m))
                .toList(),
        totalGames: json['totalGames'] ?? 0,
        startIndex: json['startIndex'] ?? 0,
        endIndex: json['endIndex'] ?? 0,
      );

  @override
  List<Object> get props => [
        this.matches,
        this.totalGames,
        this.startIndex,
        this.endIndex,
      ];

  @override
  String toString() =>
      'MatchlistDTO ' +
      {
        'matches': matches,
        'totalGames': totalGames,
        'startIndex': startIndex,
        'endIndex': endIndex,
      }.toString();
}
