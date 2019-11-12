import '../../api_key_store.dart';
import '../apis/champion_v3.dart';
import '../apis/impl/champion_v3_impl.dart';
import '../model/champion_info.dart';
import '../typedefs.dart';

class Champion {
  Champion._(this._api);
  static Champion _instance;
  factory Champion(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = Champion._(
        ChampionV3Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '3';

  final ChampionV3 _api;

  /// Returns a [ChampionInfo] object that details the current state of the
  /// free champion rotation cycle.
  Future<ChampionInfo> championRotations() => _api.getChampionRotations();
}
