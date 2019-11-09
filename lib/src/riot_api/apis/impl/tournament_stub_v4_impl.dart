import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../../model/lobby_event_dto_wrapper.dart';
import '../tournament_stub_v4.dart';

class TournamentStubV4Impl extends TournamentStubV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  TournamentStubV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<LobbyEventDTOWrapper> getLobbyEventsByTournamentCode(
      {String tournamentCode}) {
    // TODO: implement getLobbyEventsByTournamentCode
    return null;
  }

  @override
  Future<int> postProviders(
      {StubProviderRegistrationParameters providerRegistrationParameters}) {
    // TODO: implement postProviders
    return null;
  }

  @override
  Future<List<String>> postTournamentCodes(
      {int tournamentId,
      StubTournamentCodeParameters tournamentCodeParameters,
      int count = 1000}) {
    // TODO: implement postTournamentCodes
    return null;
  }

  @override
  Future<int> postTournaments(
      {StubTournamentRegistrationParameters tournamentRegistrationParameters}) {
    // TODO: implement postTournaments
    return null;
  }
}
