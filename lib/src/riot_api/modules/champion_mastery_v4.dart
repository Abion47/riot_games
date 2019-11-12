import '../../api_key_store.dart';
import '../apis/champion_mastery_v4.dart';
import '../apis/impl/champion_mastery_v4_impl.dart';
import '../model/champion_mastery_dto.dart';
import '../typedefs.dart';

class ChampionMastery {
  ChampionMastery._(this._api);
  static ChampionMastery _instance;
  factory ChampionMastery(
    ClientGenerator clientgenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = ChampionMastery._(
        ChampionMasteryV4Impl(
          clientGenerator: clientgenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final ChampionMasteryV4 _api;

  /// Returns a list of [ChampionMasteryDTO] objects for a given summoner ID.
  Future<List<ChampionMasteryDTO>> championMasteriesFromSummonerId(
    String encryptedSummonerId,
  ) =>
      _api.getChampionMasteriesFromSummonerId(encryptedSummonerId);

  /// Returns a [ChampionMasteryDTO] object for a given summoner ID for a specific champion.
  Future<ChampionMasteryDTO> championMasteriesFromSummonerAndChampionId(
          String encryptedSummonerId, int championId) =>
      _api.getChampionMasteriesFromSummonerAndChampionId(
          encryptedSummonerId, championId);

  /// Returns a summoner's overall champion mastery level.
  Future<int> championMasteryScoreFromSummonerId(
    String encryptedSummonerId,
  ) =>
      _api.getChampionMasteryScoreFromSummonerId(encryptedSummonerId);
}
