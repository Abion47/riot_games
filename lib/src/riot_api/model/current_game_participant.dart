import 'package:equatable/equatable.dart';

import 'game_customization_object.dart';
import 'perks.dart';

class CurrentGameParticipant extends Equatable {
  final int profileIconId;
  final int championId;
  final String summonerName;
  final List<GameCustomizationObject> gameCustomizationObjects;
  final bool bot;
  final Perks perks;
  final int spell2Id;
  final int teamId;
  final int spell1Id;
  final String summonerId;

  CurrentGameParticipant({
    this.profileIconId,
    this.championId,
    this.summonerName,
    this.gameCustomizationObjects,
    this.bot,
    this.perks,
    this.spell2Id,
    this.teamId,
    this.spell1Id,
    this.summonerId,
  });

  @override
  List<Object> get props => [
        this.profileIconId,
        this.championId,
        this.summonerName,
        this.gameCustomizationObjects,
        this.bot,
        this.perks,
        this.spell2Id,
        this.teamId,
        this.spell1Id,
        this.summonerId,
      ];
}
