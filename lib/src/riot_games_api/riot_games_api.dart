// import 'package:riot_games_api/src/riot_api/apis/impl/summoner_v4_impl.dart';
// import 'package:riot_games_api/src/riot_api/apis/summoner_v4.dart';
// import 'package:riot_games_api/src/core/network.dart';
// import 'package:riot_games_api/src/internal_utility.dart';

// import 'package:http/http.dart' as http;

// class RiotAPI {
//   final _keyStore = ApiKeyStore();
//   set apiKey(String key) => _keyStore.apiKey = key;

//   SummonerV4 get summoner =>
//       SummonerV4Impl(client: http.Client(), apiKeyStore: _keyStore);

//   // static RiotAPI _instance;

//   // RiotAPI._();
//   // factory RiotAPI() {
//   //   if (_instance == null) {
//   //     _instance = RiotAPI._();
//   //   }
//   //   return _instance;
//   // }

//   // String _apiKey = '';
//   // set apiKey(String key) => _apiKey = key;

//   // Map<String, String> get _headers => {
//   //       'Accept-Charset': 'application/x-www-form-urlencoded; charset=UTF-8',
//   //       'X-Riot-Token': _apiKey,
//   //       'Accept-Language': 'en-US,en;q=0.9',
//   //     };

//   // void _checkApiKey() {
//   //   if (_apiKey == '') {
//   //     throw StateError('The API Key has not been set.');
//   //   }
//   // }

//   // // LOL-STATUS-V3

//   // Future<ShardData> getShardData() async {
//   //   _checkApiKey();

//   //   final endpoint = LolStatusV3_getShardData;
//   //   endpoint['hostName'] = _hostName;

//   //   final url = endpoint.build();

//   //   final response = await sendHttpRequest(url, 'GET', headers: _headers);

//   //   if (response.code == 200) {
//   //     return ShardData.fromJson(response.body);
//   //   }

//   //   throw response.toError();
//   // }

//   // // SUMMONER-V4

//   // Future<Summoner> getSummonerByName(String name) async {
//   //   _checkApiKey();

//   //   final endpoint = SummonerV4_getSummonerByName;
//   //   endpoint['hostName'] = _hostName;
//   //   endpoint['summonerName'] = name;

//   //   final url = endpoint.build();

//   //   final response = await sendHttpRequest(url, 'GET', headers: _headers);

//   //   if (response.code == 200) {
//   //     return Summoner.fromJson(response.body);
//   //   }

//   //   throw response.toError();
//   // }

//   // Future<Summoner> getSummonerByAccountId(String accountId) async {
//   //   _checkApiKey();

//   //   final endpoint = SummonerV4_getSummonerByAccountId;
//   //   endpoint['hostName'] = _hostName;
//   //   endpoint['accountId'] = accountId;

//   //   final url = endpoint.build();

//   //   final response = await sendHttpRequest(url, 'GET', headers: _headers);

//   //   if (response.code == 200) {
//   //     return Summoner.fromJson(response.body);
//   //   }

//   //   throw response.toError();
//   // }

//   // Future<Summoner> getSummoner(String summonerId) async {
//   //   _checkApiKey();

//   //   final endpoint = SummonerV4_getSummonerBySummonerId;
//   //   endpoint['hostName'] = _hostName;
//   //   endpoint['summonerId'] = summonerId;

//   //   final url = endpoint.build();

//   //   final response = await sendHttpRequest(url, 'GET', headers: _headers);

//   //   if (response.code == 200) {
//   //     return Summoner.fromJson(response.body);
//   //   }

//   //   throw response.toError();
//   // }

//   // Future<Summoner> getSummonerByPuuid(String puuid) async {
//   //   _checkApiKey();

//   //   final endpoint = SummonerV4_getSummonerByPuuid;
//   //   endpoint['hostName'] = _hostName;
//   //   endpoint['puuid'] = puuid;

//   //   final url = endpoint.build();

//   //   final response = await sendHttpRequest(url, 'GET', headers: _headers);

//   //   if (response.code == 200) {
//   //     return Summoner.fromJson(response.body);
//   //   }

//   //   throw response.toError();
//   // }
// }
