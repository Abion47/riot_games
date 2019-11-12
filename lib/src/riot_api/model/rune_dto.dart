import 'package:equatable/equatable.dart';

class RuneDTO extends Equatable {
  RuneDTO({
    this.runeId,
    this.rank,
  });

  ///
  final int runeId;

  ///
  final int rank;

  factory RuneDTO.fromJson(Map<String, dynamic> json) => RuneDTO(
        runeId: json['runeId'] ?? 0,
        rank: json['rank'] ?? 0,
      );

  @override
  List<Object> get props => [
        this.runeId,
        this.rank,
      ];

  @override
  String toString() =>
      'RuneDTO ' +
      {
        'runeId': runeId,
        'rank': rank,
      }.toString();
}
