import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../../core/endpoint.dart';
import '../../../core/network.dart';
import '../../model/match_dto.dart';
import '../../model/match_timeline_dto.dart';
import '../../model/matchlist_dto.dart';
import '../match_v4.dart';

Endpoint get _MatchV4_getMatchById =>
    Endpoint('/lol/match/v4/matches/{matchId}')..initialize();
Endpoint get _MatchV4_getMatchListByAccountId =>
    Endpoint('/lol/match/v4/matchlists/by-account/{encryptedAccountId}')
      ..initialize();
Endpoint get _MatchV4_getTimelineByMatchId =>
    Endpoint('/lol/match/v4/timelines/by-match/{matchId}')..initialize();
Endpoint get _MatchV4_getMatchIdsByTournamentCode =>
    Endpoint('/lol/match/v4/matches/by-tournament-code/{tournamentCode}/ids')
      ..initialize();
Endpoint get _MatchV4_getMatchByTournamentCode => Endpoint(
    '/lol/match/v4/matches/{matchId}/by-tournament-code/{tournamentCode}')
  ..initialize();

class MatchV4Impl extends MatchV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  MatchV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<MatchDTO> getMatchById(int matchId) async {
    apiKeyStore.checkApiKey();

    final endpoint = _MatchV4_getMatchById..['matchId'] = matchId;

    final url = endpoint.build();

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return MatchDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<MatchlistDTO> getMatchListByAccountId(
    String encryptedAccountId, {
    List<int> championFilter,
    List<int> queueFilter,
    List<int> seasonFilter,
    int beginTime,
    int endTime,
    int beginIndex,
    int endIndex,
  }) async {
    apiKeyStore.checkApiKey();

    final endpoint = _MatchV4_getMatchListByAccountId
      ..['encryptedAccountId'] = encryptedAccountId;

    final url = endpoint.build({
      if (championFilter != null) 'championFilter': championFilter,
      if (queueFilter != null) 'queueFilter': queueFilter,
      if (seasonFilter != null) 'seasonFilter': seasonFilter,
      if (beginTime != null) 'beginTime': beginTime,
      if (endTime != null) 'endTime': endTime,
      if (beginIndex != null) 'beginIndex': beginIndex,
      if (endIndex != null) 'endIndex': endIndex,
    });

    final client = clientGenerator();
    final response = await NetworkHandler.sendHttpRequest(
        client, apiKeyStore.apiKey, url, 'GET');
    client.close();

    if (response.code == 200) {
      return MatchlistDTO.fromJson(response.body);
    }

    throw response.toError();
  }

  @override
  Future<MatchTimelineDTO> getTimelineByMatchId(int matchId) {
    // TODO: implement getTimelineByMatchId
    return null;
  }

  @override
  Future<List<int>> getMatchIdsByTournamentCode(String tournamentCode) {
    // TODO: implement getMatchIdsByTournamentCode
    return null;
  }

  @override
  Future<MatchDTO> getMatchByTournamentCode(
    String tournamentCode,
    int matchId,
  ) {
    // TODO: implement getMatchByTournamentCode
    return null;
  }
}
