import 'package:equatable/equatable.dart';

class BannedChampion extends Equatable {
  final int pickTurn;
  final int championId;
  final int teamId;

  BannedChampion({
    this.pickTurn,
    this.championId,
    this.teamId,
  });

  @override
  List<Object> get props => [
        this.pickTurn,
        this.championId,
        this.teamId,
      ];
}
