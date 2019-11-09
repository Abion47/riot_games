import 'package:meta/meta.dart';

import '../model/match_dto.dart';
import '../model/match_timeline_dto.dart';
import '../model/matchlist_dto.dart';

abstract class MatchV4 {
  Future<MatchDTO> getMatchById({
    @required int matchId,
  });

  Future<MatchlistDTO> getMatchListByAccountId({
    @required String encryptedAccountId,
    List<int> championFilter,
    List<int> queueFilter,
    List<int> seasonFilter,
    int beginTime,
    int endTime,
    int beginIndex,
    int endIndex,
  });

  Future<MatchTimelineDTO> getTimelineByMatchId({
    @required int matchId,
  });

  Future<List<int>> getMatchIdsByTournamentCode(
      {@required String tournamentCode});

  Future<MatchDTO> getMatchByTournamentCode({
    @required String tournamentCode,
    @required int matchId,
  });
}
