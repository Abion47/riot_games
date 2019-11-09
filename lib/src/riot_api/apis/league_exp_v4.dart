import 'package:meta/meta.dart';

import '../model/league_entry_dto.dart';

abstract class LeagueExpV4 {
  List<LeagueEntryDTO> getEntriesByQueueTierDivision({
    @required String queue,
    @required String tier,
    @required String division,
    int page = 1,
  });
}
