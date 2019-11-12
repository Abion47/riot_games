import 'package:riot_games/src/riot_api/model/match_dto.dart';
import 'package:riot_games/src/riot_api/model/match_timeline_dto.dart';
import 'package:riot_games/src/riot_api/model/matchlist_dto.dart';

import '../../api_key_store.dart';
import '../apis/impl/match_v4_impl.dart';
import '../apis/match_v4.dart';
import '../typedefs.dart';

class Match {
  Match._(this._api);
  static Match _instance;
  factory Match(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = Match._(
        MatchV4Impl(
          clientGenerator: clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final MatchV4 _api;

  Future<MatchDTO> matchFromId(
    int matchId,
  ) =>
      _api.getMatchById(matchId);

  Future<MatchlistDTO> matchListFromAccountId(
    String encryptedAccountId, {
    List<int> championFilter,
    List<int> queueFilter,
    List<int> seasonFilter,
    int beginTime,
    int endTime,
    int beginIndex,
    int endIndex,
  }) =>
      _api.getMatchListByAccountId(
        encryptedAccountId,
        championFilter: championFilter,
      );

  Future<MatchTimelineDTO> timelineFromMatchId(
    int matchId,
  ) =>
      _api.getTimelineByMatchId(matchId);

  Future<List<int>> matchIdsFromTournamentCode(String tournamentCode) =>
      _api.getMatchIdsByTournamentCode(tournamentCode);

  Future<MatchDTO> matchFromTournamentCode(
    String tournamentCode,
    int matchId,
  ) =>
      _api.getMatchByTournamentCode(tournamentCode, matchId);
}
