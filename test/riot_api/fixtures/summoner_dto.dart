import 'fixture_helper.dart';

class SummonerDtoFixture {
  static const data = {
    "profileIconId": 99,
    "name": "SomeTestUser",
    "puuid":
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP_QRSTUV_WXYZ01234567-89abc-defghijkl",
    "summonerLevel": 999,
    "accountId": "abcde-fghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP",
    "id": "abcdefghijklmnopqrstuvwx-yzABCDE_FGHIJKLMNOP",
    "revisionDate": 1546300800000
  };

  static String get json => dataToJson(data);
}
