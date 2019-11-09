import 'package:meta/meta.dart';

import '../model/lobby_event_dto_wrapper.dart';

/// This is a stand-in API stub that replicates the behavior of the tournament
/// API. Use this to mock your implementation before applying for a production
/// key of the tournament API.
abstract class TournamentStubV4 {
  Future<List<String>> postTournamentCodes({
    @required int tournamentId,
    @required StubTournamentCodeParameters tournamentCodeParameters,
    int count = 1000,
  });

  Future<LobbyEventDTOWrapper> getLobbyEventsByTournamentCode({
    @required String tournamentCode,
  });

  Future<int> postProviders({
    @required StubProviderRegistrationParameters providerRegistrationParameters,
  });

  Future<int> postTournaments({
    @required
        StubTournamentRegistrationParameters tournamentRegistrationParameters,
  });
}

class StubTournamentCodeParameters {
  final String spectatorType;
  final int teamSize;
  final String pickType;
  final Set<String> allowedSummonerIds;
  final String mapType;
  final String metaData;

  StubTournamentCodeParameters({
    @required this.spectatorType,
    @required this.teamSize,
    @required this.pickType,
    @required this.mapType,
    this.allowedSummonerIds,
    this.metaData,
  });

  Map toJson() => {
        'spectatorType': spectatorType,
        'teamSize': teamSize,
        'pickType': pickType,
        'allowedSummonerIds': allowedSummonerIds,
        'mapType': mapType,
        'metaData': metaData,
      };
}

class StubProviderRegistrationParameters {
  final String url;
  final String region;

  StubProviderRegistrationParameters({
    @required this.url,
    @required this.region,
  });

  Map toJson() => {
        'url': url,
        'region': region,
      };
}

class StubTournamentRegistrationParameters {
  final int providerId;
  final String name;

  StubTournamentRegistrationParameters({
    this.providerId,
    this.name,
  });

  Map toJson() => {
        'providerId': providerId,
        'name': name,
      };
}
