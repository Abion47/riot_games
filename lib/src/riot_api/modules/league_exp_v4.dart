import '../../api_key_store.dart';
import '../apis/impl/league_exp_v4_impl.dart';
import '../apis/league_exp_v4.dart';
import '../model/league_entry_exp_dto.dart';
import '../typedefs.dart';

class LeagueExp {
  LeagueExp._(this._api);
  static LeagueExp _instance;
  factory LeagueExp(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = LeagueExp._(
        LeagueExpV4Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final LeagueExpV4 _api;

  /// Experimental endpoint. Gets a list of leagues/players in a queue, tier,
  /// and division. Paginated at 205 results per page.
  Future<Set<LeagueEntryExpDTO>> leagueEntries(
    String queue,
    String tier,
    String division, {
    int page = 1,
  }) =>
      _api.getEntriesInQueueTierDivision(queue, tier, division, page: page);
}
