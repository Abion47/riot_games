import 'package:riot_games_api/src/internal_utility.dart';

import 'endpoints.dart';
import 'model/summoner_v4.dart';

const _hostName = "https://na1.api.riotgames.com";

class RiotAPI {
  static RiotAPI _instance;

  RiotAPI._();
  factory RiotAPI() {
    if (_instance == null) {
      _instance = RiotAPI._();
    }
    return _instance;
  }

  String _apiKey = '';
  set apiKey(String key) => _apiKey = key;

  Map<String, String> get _headers => {
    'Accept-Charset': 'application/x-www-form-urlencoded; charset=UTF-8',
    'X-Riot-Token': _apiKey,
    'Accept-Language': 'en-US,en;q=0.9',
  };

  void _checkApiKey() {
    if (_apiKey == '') {
      throw StateError('The API Key has not been set.');
    }
  }

  // SUMMONER-V4

  Future<SummonerByName> getSummonerByName(String name) async {
    _checkApiKey();

    final endpoint = SummonerV4_getSummonerByName;
    endpoint['hostName'] = _hostName;
    endpoint['summonerName'] = name;

    final url = endpoint.build();

    final response = await sendHttpRequest(url, 'GET', headers: _headers);

    if (response.code == 200) {
      return SummonerByName.fromJson(response.body);
    }

    throw response.toError();
  }
}