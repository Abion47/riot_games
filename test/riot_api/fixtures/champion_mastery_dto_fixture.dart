import 'fixture_helper.dart';

class ChampionMasteryDtoFixture {
  static const dataSingle = {
    'championLevel': 5,
    'chestGranted': true,
    'championPoints': 999999,
    'championPointsSinceLastLevel': 4000,
    'championPointsUntilNextLevel': 5000,
    'summonerId': 'abcdefghijklmnopqrstuvwx-yzABCDE_FGHIJKLMNOP',
    'tokensEarned': 1,
    'championId': 99,
    'lastPlayTime': 1546300800000,
  };
  static const dataList = [dataSingle];

  static String get jsonSingle => dataToJson(dataSingle);
  static String get jsonList => dataToJson(dataList);
}
