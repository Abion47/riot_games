import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/shard_status.dart';
import '../lol_status_v3.dart';

Endpoint get _LolStatusV3_getShardData =>
    Endpoint('/lol/status/v3/shard-data')..initialize();

class LolStatusV3Impl extends LolStatusV3 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  LolStatusV3Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<ShardStatus> getShardData() async {
    apiKeyStore.checkApiKey();

    final endpoint = _LolStatusV3_getShardData;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return ShardStatus.fromJson(response.body);
    }

    throw response.toError();
  }
}
