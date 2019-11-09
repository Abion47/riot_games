import 'package:equatable/equatable.dart';

class TeamBansDTO extends Equatable {
  final int pickTurn;
  final int championId;

  TeamBansDTO({
    this.pickTurn,
    this.championId,
  });

  @override
  List<Object> get props => [
        this.pickTurn,
        this.championId,
      ];
}
