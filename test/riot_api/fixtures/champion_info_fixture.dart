import 'fixture_helper.dart';

class ChampionInfoFixture {
  static const data = {
    'freeChampionIds': [
      1,
      6,
      36,
      50,
      57,
      60,
      63,
      64,
      67,
      101,
      119,
      136,
      245,
      266,
      497
    ],
    'freeChampionIdsForNewPlayers': [18, 81, 92, 141, 37, 238, 19, 45, 25, 64],
    'maxNewPlayerLevel': 10,
  };

  static String get json => dataToJson(data);
}
