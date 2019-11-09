import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/match_dto.dart';
import '../../model/match_timeline_dto.dart';
import '../../model/matchlist_dto.dart';
import '../match_v4.dart';

class MatchV4Impl extends MatchV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  MatchV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<MatchDTO> getMatchById({int matchId}) {
    // TODO: implement getMatchById
    return null;
  }

  @override
  Future<MatchDTO> getMatchByTournamentCode(
      {String tournamentCode, int matchId}) {
    // TODO: implement getMatchByTournamentCode
    return null;
  }

  @override
  Future<List<int>> getMatchIdsByTournamentCode({String tournamentCode}) {
    // TODO: implement getMatchIdsByTournamentCode
    return null;
  }

  @override
  Future<MatchlistDTO> getMatchListByAccountId(
      {String encryptedAccountId,
      List<int> championFilter,
      List<int> queueFilter,
      List<int> seasonFilter,
      int beginTime,
      int endTime,
      int beginIndex,
      int endIndex}) {
    // TODO: implement getMatchListByAccountId
    return null;
  }

  @override
  Future<MatchTimelineDTO> getTimelineByMatchId({int matchId}) {
    // TODO: implement getTimelineByMatchId
    return null;
  }
}
