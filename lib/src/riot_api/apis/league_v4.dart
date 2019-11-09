import 'package:meta/meta.dart';

import '../model/league_entry_dto.dart';
import '../model/league_list_dto.dart';

abstract class LeagueV4 {
  Future<LeagueListDTO> getChallengerLeaguesByQueue({
    @required String queue,
  });

  Future<List<LeagueEntryDTO>> getEntriesBySummoner({
    @required String encryptedSummonerId,
  });

  Future<List<LeagueEntryDTO>> getEntriesByQueueTierDivision({
    @required String division,
    @required String tier,
    @required String queue,
    int page = 1,
  });

  Future<LeagueListDTO> getGrandmasterLeaguesByQueue({
    @required String queue,
  });

  Future<LeagueListDTO> getLeagueById({
    @required String leagueId,
  });

  Future<LeagueListDTO> getMasterLeaguesByQueue({
    @required String queue,
  });
}
