import '../model/match_dto.dart';
import '../model/match_timeline_dto.dart';
import '../model/matchlist_dto.dart';

abstract class MatchV4 {
  Future<MatchDTO> getMatchById(
    int matchId,
  );

  Future<MatchlistDTO> getMatchListByAccountId(
    String encryptedAccountId, {
    List<int> championFilter,
    List<int> queueFilter,
    List<int> seasonFilter,
    int beginTime,
    int endTime,
    int beginIndex,
    int endIndex,
  });

  Future<MatchTimelineDTO> getTimelineByMatchId(
    int matchId,
  );

  Future<List<int>> getMatchIdsByTournamentCode(String tournamentCode);

  Future<MatchDTO> getMatchByTournamentCode(
    String tournamentCode,
    int matchId,
  );
}
