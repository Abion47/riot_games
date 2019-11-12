import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/champion_mastery_dto.dart';
import '../../typedefs.dart';
import '../champion_mastery_v4.dart';

Endpoint get _ChampionMasteryV4_getChampionMasteriesFromSummonerId => Endpoint(
    '/lol/champion-mastery/v4/champion-masteries/by-summoner/{encryptedSummonerId}')
  ..initialize();
Endpoint get _ChampionMasteryV4_getChampionMasteriesFromSummonerAndChampionId =>
    Endpoint(
        '/lol/champion-mastery/v4/champion-masteries/by-summoner/{encryptedSummonerId}/by-champion/{championId}')
      ..initialize();
Endpoint get _ChampionMasteryV4_getChampionMasteryScoreFromSummonerId =>
    Endpoint(
        '/lol/champion-mastery/v4/scores/by-summoner/{encryptedSummonerId}')
      ..initialize();

class ChampionMasteryV4Impl extends ChampionMasteryV4 {
  final ClientGenerator clientGenerator;
  final ApiKeyStore apiKeyStore;

  ChampionMasteryV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<List<ChampionMasteryDTO>> getChampionMasteriesFromSummonerId(
    String encryptedSummonerId,
  ) async {
    apiKeyStore.checkApiKey();

    final endpoint = _ChampionMasteryV4_getChampionMasteriesFromSummonerId
      ..['encryptedSummonerId'] = encryptedSummonerId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return response.body
          .map<ChampionMasteryDTO>((dto) => ChampionMasteryDTO.fromJson(dto))
          .toList();
    }

    throw response.toError();
  }

  @override
  Future<ChampionMasteryDTO> getChampionMasteriesFromSummonerAndChampionId(
    String encryptedSummonerId,
    int championId,
  ) async {
    apiKeyStore.checkApiKey();

    final endpoint =
        _ChampionMasteryV4_getChampionMasteriesFromSummonerAndChampionId
          ..['encryptedSummonerId'] = encryptedSummonerId
          ..['championId'] = championId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return ChampionMasteryDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<int> getChampionMasteryScoreFromSummonerId(
    String encryptedSummonerId,
  ) async {
    apiKeyStore.checkApiKey();

    final endpoint = _ChampionMasteryV4_getChampionMasteryScoreFromSummonerId
      ..['encryptedSummonerId'] = encryptedSummonerId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return response.body as int;
    }

    throw response.toError();
  }
}
