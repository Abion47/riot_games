import 'package:riot_games/src/riot_api/model/shard_status.dart';

import '../../api_key_store.dart';
import '../apis/impl/lol_status_v3_impl.dart';
import '../apis/lol_status_v3.dart';
import '../typedefs.dart';

class LolStatus {
  LolStatus._(this._api);
  static LolStatus _instance;
  factory LolStatus(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = LolStatus._(
        LolStatusV3Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '3';

  final LolStatusV3 _api;

  /// Fetches the current status of the shard for the current region.
  ///
  /// Requests against this API are not counted against the application Rate Limits.
  Future<ShardStatus> getShardData() => _api.getShardData();
}
