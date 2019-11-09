import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/lobby_event_dto_wrapper.dart';
import '../../model/tournament_code_dto.dart';
import '../tournament_v4.dart';

class TournamentV4Impl extends TournamentV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  TournamentV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<TournamentCodeDTO> getCodeByTournamentCode({String tournamentCode}) {
    // TODO: implement getCodeByTournamentCode
    return null;
  }

  @override
  Future<LobbyEventDTOWrapper> getLobbyEventsByTournamentCode(
      {String tournamentCode}) {
    // TODO: implement getLobbyEventsByTournamentCode
    return null;
  }

  @override
  Future<List<int>> postCodes(
      {int tournamentId,
      TournamentCodeParameters tournamentCodeParameters,
      int count = 1000}) {
    // TODO: implement postCodes
    return null;
  }

  @override
  Future<int> postProviders(
      {ProviderRegistrationParameters providerRegistrationParameters}) {
    // TODO: implement postProviders
    return null;
  }

  @override
  Future<int> postTournaments(
      {TournamentRegistrationParameters tournamentRegistrationParameters}) {
    // TODO: implement postTournaments
    return null;
  }

  @override
  Future putCodeByTournamentCode(
      {String tournamentCode,
      TournamentCodeUpdateParameters tournamentCodeUpdateParameters}) {
    // TODO: implement putCodeByTournamentCode
    return null;
  }
}
