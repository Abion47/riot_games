export './services/router_constants.dart';

abstract class LeagueOfLegends {
  // Constants

  void getSeasons();
  void getQueueIds();
  void getMaps();
  void getGameModes();
  void getGameTypes();

  // Ranked Info

  void getQueueTypes();
  void getRankedEmblems();
  void getRankedPositions();
  void getLegacyTierIcons();
}
