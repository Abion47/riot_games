import '../model/league_entry_exp_dto.dart';

abstract class LeagueExpV4 {
  Future<Set<LeagueEntryExpDTO>> getEntriesInQueueTierDivision(
    String queue,
    String tier,
    String division, {
    int page = 1,
  });
}
