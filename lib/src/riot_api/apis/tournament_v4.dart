import 'package:meta/meta.dart';

import '../model/lobby_event_dto_wrapper.dart';
import '../model/tournament_code_dto.dart';

abstract class TournamentV4 {
  Future<List<int>> postCodes({
    @required int tournamentId,
    @required TournamentCodeParameters tournamentCodeParameters,
    int count = 1000,
  });

  Future<TournamentCodeDTO> getCodeByTournamentCode({
    @required String tournamentCode,
  });

  Future putCodeByTournamentCode({
    @required String tournamentCode,
    TournamentCodeUpdateParameters tournamentCodeUpdateParameters,
  });

  Future<LobbyEventDTOWrapper> getLobbyEventsByTournamentCode({
    @required String tournamentCode,
  });

  Future<int> postProviders({
    @required ProviderRegistrationParameters providerRegistrationParameters,
  });

  Future<int> postTournaments({
    @required TournamentRegistrationParameters tournamentRegistrationParameters,
  });
}

class TournamentCodeParameters {
  final String spectatorType;
  final int teamSize;
  final String pickType;
  final Set<String> allowedSummonerIds;
  final String mapType;
  final String metaData;

  TournamentCodeParameters({
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

class TournamentCodeUpdateParameters {
  final String spectatorType;
  final String pickType;
  final Set<String> allowedSummonerIds;
  final String mapType;

  TournamentCodeUpdateParameters({
    @required this.spectatorType,
    @required this.pickType,
    @required this.mapType,
    this.allowedSummonerIds,
  });

  Map toJson() => {
        'spectatorType': spectatorType,
        'pickType': pickType,
        'allowedSummonerIds': allowedSummonerIds,
        'mapType': mapType,
      };
}

class ProviderRegistrationParameters {
  final String url;
  final String region;

  ProviderRegistrationParameters({
    @required this.url,
    @required this.region,
  });

  Map toJson() => {
        'url': url,
        'region': region,
      };
}

class TournamentRegistrationParameters {
  final int providerId;
  final String name;

  TournamentRegistrationParameters({
    this.providerId,
    this.name,
  });

  Map toJson() => {
        'providerId': providerId,
        'name': name,
      };
}
