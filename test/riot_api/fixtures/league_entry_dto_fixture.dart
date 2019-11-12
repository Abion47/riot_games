import 'fixture_helper.dart';

class LeagueEntryDTOFixture {
  static const data = [
    {
      "queueType": "RANKED_SOLO_5x5",
      "summonerName": "12 rebmevon",
      "hotStreak": false,
      "wins": 46,
      "veteran": false,
      "losses": 25,
      "rank": "I",
      "tier": "GOLD",
      "inactive": false,
      "freshBlood": false,
      "leagueId": "d6210b80-4579-11e9-8d57-c81f66cf2333",
      "summonerId": "NZe8CvA4RCsogQphIiJB7EvKITMK18kD1-2rWRflRvNNwiTD",
      "leaguePoints": 37
    },
    {
      "queueType": "RANKED_SOLO_5x5",
      "summonerName": "Hiruma Yuichi",
      "hotStreak": false,
      "miniSeries": {"wins": 0, "losses": 1, "target": 3, "progress": "LNNNN"},
      "wins": 25,
      "veteran": false,
      "losses": 24,
      "rank": "I",
      "tier": "GOLD",
      "inactive": false,
      "freshBlood": false,
      "leagueId": "ac81f5b0-978a-11e9-b135-c81f66cf135e",
      "summonerId": "wb4gUlMJiiJtR4kweFHep-O11PDdW3khbkTlH7QA-LkAV6de",
      "leaguePoints": 100
    },
    {
      "queueType": "RANKED_SOLO_5x5",
      "summonerName": "TheChugJugFugBoi",
      "hotStreak": false,
      "wins": 49,
      "veteran": false,
      "losses": 44,
      "rank": "I",
      "tier": "GOLD",
      "inactive": false,
      "freshBlood": false,
      "leagueId": "0d7768a0-244a-11e9-ae04-c81f66dbb56c",
      "summonerId": "xE-4iwgvSE0Pb4_E6v4xW3INhVpywko7en7Psz5UDP_vTrzJ",
      "leaguePoints": 44
    },
  ];

  static String get json => dataToJson(data);
}
