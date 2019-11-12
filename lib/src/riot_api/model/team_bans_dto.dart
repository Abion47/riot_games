import 'package:equatable/equatable.dart';

class TeamBansDTO extends Equatable {
  TeamBansDTO({
    this.pickTurn,
    this.championId,
  });

  /// Turn during which the champion was banned.
  final int pickTurn;

  /// The ID of the banned champion.
  final int championId;

  factory TeamBansDTO.fromJson(Map<String, dynamic> json) => TeamBansDTO(
        pickTurn: json['pickTurn'] ?? 0,
        championId: json['championId'] ?? 0,
      );

  @override
  List<Object> get props => [
        this.pickTurn,
        this.championId,
      ];

  @override
  String toString() =>
      'TeamBansDTO ' +
      {
        'pickTurn': pickTurn,
        'championId': championId,
      }.toString();
}
