import 'package:equatable/equatable.dart';

class Participant extends Equatable {
  final int profileIconId;
  final int championId;
  final String summonerName;
  final bool bot;
  final int spell2Id;
  final int teamId;
  final int spell1Id;

  Participant({
    this.profileIconId,
    this.championId,
    this.summonerName,
    this.bot,
    this.spell2Id,
    this.teamId,
    this.spell1Id,
  });

  @override
  List<Object> get props => [
        this.profileIconId,
        this.championId,
        this.summonerName,
        this.bot,
        this.spell2Id,
        this.teamId,
        this.spell1Id,
      ];
}
