import '../model/league_entry_dto.dart';
import '../model/league_list_dto.dart';

abstract class LeagueV4 {
  Future<LeagueListDTO> getChallengerLeaguesInQueue(
    String queue,
  );

  Future<Set<LeagueEntryDTO>> getEntriesForSummoner(
    String encryptedSummonerId,
  );

  Future<Set<LeagueEntryDTO>> getEntriesInQueueTierDivision(
    String division,
    String tier,
    String queue, {
    int page = 1,
  });

  Future<LeagueListDTO> getGrandmasterLeaguesInQueue(
    String queue,
  );

  Future<LeagueListDTO> getLeagueById(
    String leagueId,
  );

  Future<LeagueListDTO> getMasterLeaguesInQueue(
    String queue,
  );
}
