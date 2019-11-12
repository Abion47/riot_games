import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/league_entry_dto.dart';
import '../../model/league_list_dto.dart';
import '../../typedefs.dart';
import '../league_v4.dart';

Endpoint get _LeagueV4_getChallengerLeaguesInQueue =>
    Endpoint('/lol/league/v4/challengerleagues/by-queue/{queue}')..initialize();
Endpoint get _LeagueV4_getEntriesForSummoner =>
    Endpoint('/lol/league/v4/entries/by-summoner/{encryptedSummonerId}')
      ..initialize();
Endpoint get _LeagueV4_getEntriesInQueueTierDivision =>
    Endpoint('/lol/league/v4/entries/{queue}/{tier}/{division}')..initialize();
Endpoint get _LeagueV4_getGrandmasterLeaguesInQueue =>
    Endpoint('/lol/league/v4/grandmasterleagues/by-queue/{queue}')
      ..initialize();
Endpoint get _LeagueV4_getLeagueById =>
    Endpoint('/lol/league/v4/leagues/{leagueId}')..initialize();
Endpoint get _LeagueV4_getMasterLeaguesInQueue =>
    Endpoint('/lol/league/v4/masterleagues/by-queue/{queue}')..initialize();

class LeagueV4Impl extends LeagueV4 {
  final ClientGenerator clientGenerator;
  final ApiKeyStore apiKeyStore;

  LeagueV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<LeagueListDTO> getChallengerLeaguesInQueue(String queue) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getChallengerLeaguesInQueue..['queue'] = queue;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return LeagueListDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<Set<LeagueEntryDTO>> getEntriesForSummoner(
      String encryptedSummonerId) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getEntriesForSummoner
      ..['encryptedSummonerId'] = encryptedSummonerId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return response.body
          .map<LeagueEntryDTO>((dto) => LeagueEntryDTO.fromJson(dto))
          .toSet();
    }

    throw response.toError();
  }

  @override
  Future<Set<LeagueEntryDTO>> getEntriesInQueueTierDivision(
    String division,
    String tier,
    String queue, {
    int page = 1,
  }) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getEntriesInQueueTierDivision
      ..['queue'] = queue
      ..['tier'] = tier
      ..['division'] = division;

    final url = endpoint.build({'page': page});

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return response.body
          .map<LeagueEntryDTO>((fix) => LeagueEntryDTO.fromJson(fix))
          .toSet();
    }

    throw response.toError();
  }

  @override
  Future<LeagueListDTO> getGrandmasterLeaguesInQueue(String queue) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getGrandmasterLeaguesInQueue..['queue'] = queue;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return LeagueListDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<LeagueListDTO> getLeagueById(String leagueId) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getLeagueById..['leagueId'] = leagueId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return LeagueListDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<LeagueListDTO> getMasterLeaguesInQueue(String queue) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueV4_getMasterLeaguesInQueue..['queue'] = queue;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return LeagueListDTO.fromJson(response.body);
    }

    throw response.toError();
  }
}
