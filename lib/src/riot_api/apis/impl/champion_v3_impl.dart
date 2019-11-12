import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/champion_info.dart';
import '../../typedefs.dart';
import '../champion_v3.dart';

Endpoint get _ChampionV3_getChampionRotations =>
    Endpoint('/lol/platform/v3/champion-rotations')..initialize();

class ChampionV3Impl extends ChampionV3 {
  final ClientGenerator clientGenerator;
  final ApiKeyStore apiKeyStore;

  ChampionV3Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<ChampionInfo> getChampionRotations() async {
    apiKeyStore.checkApiKey();

    final endpoint = _ChampionV3_getChampionRotations;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return ChampionInfo.fromJson(response.body);
    }

    throw response.toError();
  }
}
