import 'package:equatable/equatable.dart';

class MasteryDTO extends Equatable {
  MasteryDTO({
    this.masteryId,
    this.rank,
  });

  ///
  final int masteryId;

  ///
  final int rank;

  factory MasteryDTO.fromJson(Map<String, dynamic> json) => MasteryDTO(
        masteryId: json['masteryId'] ?? 0,
        rank: json['rank'] ?? 0,
      );

  @override
  List<Object> get props => [
        this.masteryId,
        this.rank,
      ];

  @override
  String toString() =>
      'MasteryDTO ' +
      {
        'masteryId': masteryId,
        'rank': rank,
      }.toString();
}
