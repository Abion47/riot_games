import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/league_entry_dto.dart';
import '../league_exp_v4.dart';

class LeagueExpV4Impl extends LeagueExpV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  LeagueExpV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  List<LeagueEntryDTO> getEntriesByQueueTierDivision(
      {String queue, String tier, String division, int page = 1}) {
    // TODO: implement getEntriesByQueueTierDivision
    return null;
  }
}
