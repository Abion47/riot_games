import 'package:http/http.dart' as http;
import 'package:riot_games/src/core/network.dart';

import '../../../api_key_store.dart';
import '../../../endpoint.dart';
import '../../model/champion_info.dart';
import '../champion_v3.dart';

Endpoint get _ChampionV3_getChampionRotations =>
    Endpoint('/lol/platform/v3/champion-rotations')..initialize();

class ChampionV3Impl extends ChampionV3 {
  final http.Client Function() clientGenerator;
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

    if (response.code == 200) {
      return ChampionInfo.fromJson(response.body);
    }

    throw response.toError();
  }
}
