import 'fixture_helper.dart';

class LeagueListDTOFixture {
  static const data = {
    "tier": "CHALLENGER",
    "leagueId": "974b70e3-28eb-3b60-9e9f-82a8efa19f10",
    "entries": [
      {
        "summonerName": "WEAREDOGWOOFWOOF",
        "hotStreak": false,
        "wins": 826,
        "veteran": true,
        "losses": 699,
        "rank": "I",
        "inactive": false,
        "freshBlood": false,
        "summonerId": "8KzV8NB38AwAZHVT1gKaFADs3ZGItjuJyN3EmG11fHDs3oI",
        "leaguePoints": 739
      },
      {
        "summonerName": "Lutano",
        "hotStreak": true,
        "wins": 1193,
        "veteran": true,
        "losses": 1108,
        "rank": "I",
        "inactive": false,
        "freshBlood": false,
        "summonerId": "7pyRBp5-jIQEgt0dxVWFMiAZotHp5_TnAgfwBHzatpcV5ME",
        "leaguePoints": 877
      },
      {
        "summonerName": "TSM Johnson",
        "hotStreak": false,
        "wins": 355,
        "veteran": true,
        "losses": 240,
        "rank": "I",
        "inactive": false,
        "freshBlood": false,
        "summonerId": "NHMyOwt6tnqlREZB6IuvJ941QXza0zB2L5ejSMY75g_Mv1A",
        "leaguePoints": 1082
      },
    ],
    "queue": "RANKED_SOLO_5x5",
    "name": "Syndra's Masterminds"
  };

  static String get json => dataToJson(data);
}
