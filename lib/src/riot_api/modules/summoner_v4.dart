import '../../api_key_store.dart';
import '../apis/impl/summoner_v4_impl.dart';
import '../apis/summoner_v4.dart';
import '../model/summoner_dto.dart';
import '../typedefs.dart';

class Summoner {
  Summoner._(this._api);
  static Summoner _instance;
  factory Summoner(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = Summoner._(
        SummonerV4Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final SummonerV4 _api;

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given account id.
  Future<SummonerDTO> summonerFromAccountId(String encryptedAccountId) =>
      _api.getSummonerFromAccountId(encryptedAccountId);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given summoner name.
  Future<SummonerDTO> summonerFromName(String summonerName) =>
      _api.getSummonerFromName(summonerName);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given PUUID.
  Future<SummonerDTO> summonerFromPuuid(String encryptedPuuid) =>
      _api.getSummonerFromPuuid(encryptedPuuid);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given summoner id.
  Future<SummonerDTO> summonerFromSummonerId(String encryptedSummonerId) =>
      _api.getSummonerFromSummonerId(encryptedSummonerId);
}
