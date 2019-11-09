import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/league_entry_dto.dart';
import '../../model/league_list_dto.dart';
import '../league_v4.dart';

class LeagueV4Impl extends LeagueV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  LeagueV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<LeagueListDTO> getChallengerLeaguesByQueue({String queue}) {
    // TODO: implement getChallengerLeaguesByQueue
    return null;
  }

  @override
  Future<List<LeagueEntryDTO>> getEntriesByQueueTierDivision(
      {String division, String tier, String queue, int page = 1}) {
    // TODO: implement getEntriesByQueueTierDivision
    return null;
  }

  @override
  Future<List<LeagueEntryDTO>> getEntriesBySummoner(
      {String encryptedSummonerId}) {
    // TODO: implement getEntriesBySummoner
    return null;
  }

  @override
  Future<LeagueListDTO> getGrandmasterLeaguesByQueue({String queue}) {
    // TODO: implement getGrandmasterLeaguesByQueue
    return null;
  }

  @override
  Future<LeagueListDTO> getLeagueById({String leagueId}) {
    // TODO: implement getLeagueById
    return null;
  }

  @override
  Future<LeagueListDTO> getMasterLeaguesByQueue({String queue}) {
    // TODO: implement getMasterLeaguesByQueue
    return null;
  }
}
