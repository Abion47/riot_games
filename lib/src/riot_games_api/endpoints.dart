import '../core/endpoint.dart';

get LolStatusV3_getShardData =>
    Endpoint('https://{hostName}/lol/status/v3/shard-data')..initialize();

get SummonerV4_getSummonerBySummonerId =>
    Endpoint('https://{hostName}/lol/summoner/v4/summoners/{summonerId}')
      ..initialize();
get SummonerV4_getSummonerByName => Endpoint(
    'https://{hostName}/lol/summoner/v4/summoners/by-name/{summonerName}')
  ..initialize();
get SummonerV4_getSummonerByAccountId => Endpoint(
    'https://{hostName}/lol/summoner/v4/summoners/by-account/{accountId}')
  ..initialize();
get SummonerV4_getSummonerByPuuid =>
    Endpoint('https://{hostName}/lol/summoner/v4/summoners/by-puuid/{puuid}')
      ..initialize();
