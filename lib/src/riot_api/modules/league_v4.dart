import '../../api_key_store.dart';
import '../apis/impl/league_v4_impl.dart';
import '../apis/league_v4.dart';
import '../model/league_entry_dto.dart';
import '../model/league_list_dto.dart';
import '../typedefs.dart';

class League {
  League._(this._api);
  static League _instance;
  factory League(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = League._(
        LeagueV4Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final LeagueV4 _api;

  /// Gets a list of players at challenger rank in a queue. (See [RiotApi.queues].)
  Future<LeagueListDTO> challengerLeaguesInQueue(String queue) =>
      _api.getChallengerLeaguesInQueue(queue);

  /// Gets a list of league entries for a summoner across all queues they
  /// have a rank in. If a queue doesn't appear in the result list, the player
  /// is unranked in that queue. (See [RiotApi.queues].)
  Future<Set<LeagueEntryDTO>> entriesForSummoner(String encryptedSummonerId) =>
      _api.getEntriesForSummoner(encryptedSummonerId);

  /// Gets a list of leagues/players in a queue, tier, and division. Paginated
  /// at 205 results per page. (See [RiotApi.queues], [RiotApi.tiers], and
  /// [RiotApi.divisions].)
  Future<Set<LeagueEntryDTO>> entriesInQueueTierDivision(
    String division,
    String tier,
    String queue, {
    int page = 1,
  }) =>
      _api.getEntriesInQueueTierDivision(division, tier, queue, page: page);

  /// Gets a list of players at grandmaster rank in a queue. (See [RiotApi.queues].)
  Future<LeagueListDTO> grandmasterLeaguesInQueue(String queue) =>
      _api.getGrandmasterLeaguesInQueue(queue);

  /// Gets a list of players of a specific league with the given ID.
  Future<LeagueListDTO> leagueById(String leagueId) =>
      _api.getLeagueById(leagueId);

  /// Gets a list of players at master rank in a queue. (See [RiotApi.queues].)
  Future<LeagueListDTO> masterLeaguesInQueue(String queue) =>
      _api.getMasterLeaguesInQueue(queue);
}
