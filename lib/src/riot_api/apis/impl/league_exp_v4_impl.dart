import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/league_entry_exp_dto.dart';
import '../../typedefs.dart';
import '../league_exp_v4.dart';

Endpoint get _LeagueExpV4_getEntriesByQueueTierDivision =>
    Endpoint('/lol/league-exp/v4/entries/{queue}/{tier}/{division}')
      ..initialize();

class LeagueExpV4Impl extends LeagueExpV4 {
  final ClientGenerator clientGenerator;
  final ApiKeyStore apiKeyStore;

  LeagueExpV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<Set<LeagueEntryExpDTO>> getEntriesInQueueTierDivision(
    String queue,
    String tier,
    String division, {
    int page = 1,
  }) async {
    apiKeyStore.checkApiKey();

    final endpoint = _LeagueExpV4_getEntriesByQueueTierDivision
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
          .map<LeagueEntryExpDTO>((fix) => LeagueEntryExpDTO.fromJson(fix))
          .toSet();
    }

    throw response.toError();
  }
}
