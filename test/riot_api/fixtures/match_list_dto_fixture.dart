import 'fixture_helper.dart';

class MatchListDTOFixture {
  static const data = {
    "matches": [
      {
        "lane": "NONE",
        "gameId": 3202994827,
        "champion": 235,
        "platformId": "NA1",
        "timestamp": 1573451620029,
        "queue": 450,
        "role": "DUO_SUPPORT",
        "season": 13
      },
      {
        "lane": "TOP",
        "gameId": 3202980582,
        "champion": 98,
        "platformId": "NA1",
        "timestamp": 1573450000746,
        "queue": 450,
        "role": "DUO_SUPPORT",
        "season": 13
      },
      {
        "lane": "MID",
        "gameId": 3202864954,
        "champion": 518,
        "platformId": "NA1",
        "timestamp": 1573445009472,
        "queue": 460,
        "role": "SOLO",
        "season": 13
      },
      {
        "lane": "NONE",
        "gameId": 3202839445,
        "champion": 235,
        "platformId": "NA1",
        "timestamp": 1573443733814,
        "queue": 460,
        "role": "DUO",
        "season": 13
      }
    ],
    "endIndex": 4,
    "startIndex": 0,
    "totalGames": 134
  };

  static String get json => dataToJson(data);
}
