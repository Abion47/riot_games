import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/shard_status.dart';
import '../lol_status_v3.dart';

class LolStatusV3Impl extends LolStatusV3 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  LolStatusV3Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<ShardStatus> getShardData() {
    // TODO: implement getShardData
    return null;
  }
}
