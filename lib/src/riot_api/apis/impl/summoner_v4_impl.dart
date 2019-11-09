import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../../core/network.dart';
import '../../../endpoint.dart';
import '../../model/summoner_dto.dart';
import '../summoner_v4.dart';

Endpoint get _SummonerV4_getSummonerByAccountId =>
    Endpoint('/lol/summoner/v4/summoners/by-account/{encryptedAccountId}')
      ..initialize();
Endpoint get _SummonerV4_getSummonerByName =>
    Endpoint('/lol/summoner/v4/summoners/by-name/{summonerName}')..initialize();
Endpoint get _SummonerV4_getSummonerByPuuid =>
    Endpoint('/lol/summoner/v4/summoners/by-puuid/{encryptedPUUID}')
      ..initialize();
Endpoint get _SummonerV4_getSummonerBySummonerId =>
    Endpoint('/lol/summoner/v4/summoners/{encryptedSummonerId}')..initialize();

class SummonerV4Impl extends SummonerV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  SummonerV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<SummonerDTO> getSummonerFromAccountId(
      String encryptedAccountId) async {
    apiKeyStore.checkApiKey();

    final endpoint = _SummonerV4_getSummonerByAccountId;
    endpoint['encryptedAccountId'] = encryptedAccountId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');

    if (response.code == 200) {
      return SummonerDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<SummonerDTO> getSummonerFromName(String summonerName) async {
    apiKeyStore.checkApiKey();

    final endpoint = _SummonerV4_getSummonerByName;
    endpoint['summonerName'] = summonerName;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');

    if (response.code == 200) {
      return SummonerDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<SummonerDTO> getSummonerFromPuuid(String encryptedPuuid) async {
    apiKeyStore.checkApiKey();

    final endpoint = _SummonerV4_getSummonerByPuuid;
    endpoint['encryptedPUUID'] = encryptedPuuid;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');

    if (response.code == 200) {
      return SummonerDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<SummonerDTO> getSummonerFromSummonerId(
      String encryptedSummonerId) async {
    apiKeyStore.checkApiKey();

    final endpoint = _SummonerV4_getSummonerBySummonerId;
    endpoint['encryptedSummonerId'] = encryptedSummonerId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');

    if (response.code == 200) {
      return SummonerDTO.fromJson(response.body);
    }

    throw response.toError();
  }
}
