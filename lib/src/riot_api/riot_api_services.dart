import 'package:http/http.dart' as http;
import 'package:riot_games/src/riot_api/apis/impl/champion_v3_impl.dart';

import '../api_key_store.dart';
import 'apis/champion_mastery_v4.dart';
import 'apis/champion_v3.dart';
import 'apis/impl/champion_mastery_v4_impl.dart';
import 'apis/impl/summoner_v4_impl.dart';
import 'apis/summoner_v4.dart';
import 'model/champion_info.dart';
import 'model/champion_mastery_dto.dart';
import 'model/summoner_dto.dart';

http.Client _clientGenerator() => http.Client();

class ChampionMastery {
  ChampionMastery._(this._api);
  static ChampionMastery _instance;
  factory ChampionMastery(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = ChampionMastery._(
        ChampionMasteryV4Impl(
          clientGenerator: _clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final ChampionMasteryV4 _api;

  /// Returns a list of [ChampionMasteryDTO] objects for a given summoner ID.
  Future<List<ChampionMasteryDTO>> championMasteriesFromSummonerId(
    String encryptedSummonerId,
  ) =>
      _api.getChampionMasteriesFromSummonerId(encryptedSummonerId);

  /// Returns a [ChampionMasteryDTO] object for a given summoner ID for a specific champion.
  Future<ChampionMasteryDTO> championMasteriesFromSummonerAndChampionId(
          String encryptedSummonerId, int championId) =>
      _api.getChampionMasteriesFromSummonerAndChampionId(
          encryptedSummonerId, championId);

  /// Returns a summoner's overall champion mastery level.
  Future<int> championMasteryScoreFromSummonerId(
    String encryptedSummonerId,
  ) =>
      _api.getChampionMasteryScoreFromSummonerId(encryptedSummonerId);
}

class Champion {
  Champion._(this._api);
  static Champion _instance;
  factory Champion(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = Champion._(
        ChampionV3Impl(
          clientGenerator: _clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '3';

  final ChampionV3 _api;

  /// Returns a [ChampionInfo] object that details the current state of the
  /// free champion rotation cycle.
  Future<ChampionInfo> championRotations() => _api.getChampionRotations();
}

class LeagueExp {
  LeagueExp._();
  static LeagueExp _instance;
  factory LeagueExp(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = LeagueExp._();
    }
    return _instance;
  }

  String get version => '4';
}

class League {
  League._();
  static League _instance;
  factory League(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = League._();
    }
    return _instance;
  }

  String get version => '4';
}

class LolStatus {
  LolStatus._();
  static LolStatus _instance;
  factory LolStatus(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = LolStatus._();
    }
    return _instance;
  }

  String get version => '3';
}

class Match {
  Match._();
  static Match _instance;
  factory Match(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = Match._();
    }
    return _instance;
  }

  String get version => '4';
}

class Spectator {
  Spectator._();
  static Spectator _instance;
  factory Spectator(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = Spectator._();
    }
    return _instance;
  }

  String get version => '4';
}

class Summoner {
  Summoner._(this._api);
  static Summoner _instance;
  factory Summoner(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = Summoner._(
        SummonerV4Impl(
          clientGenerator: _clientGenerator,
          apiKeyStore: keyStore,
        ),
      );
    }
    return _instance;
  }

  String get version => '4';

  final SummonerV4 _api;

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given account id.
  Future<SummonerDTO> summonerFromAccountId(String encryptedAccountId) =>
      _api.getSummonerFromAccountId(encryptedAccountId);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given summoner name.
  Future<SummonerDTO> summonerFromName(String summonerName) =>
      _api.getSummonerFromName(summonerName);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given PUUID.
  Future<SummonerDTO> summonerFromPuuid(String encryptedPuuid) =>
      _api.getSummonerFromPuuid(encryptedPuuid);

  /// Returns a [SummonerDTO] object that contains player details for an account
  /// matching the given summoner id.
  Future<SummonerDTO> summonerFromSummonerId(String encryptedSummonerId) =>
      _api.getSummonerFromSummonerId(encryptedSummonerId);
}

class TftLeague {
  TftLeague._();
  static TftLeague _instance;
  factory TftLeague(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = TftLeague._();
    }
    return _instance;
  }

  String get version => '1';
}

class TftMatch {
  TftMatch._();
  static TftMatch _instance;
  factory TftMatch(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = TftMatch._();
    }
    return _instance;
  }

  String get version => '1';
}

class TftSummoner {
  TftSummoner._();
  static TftSummoner _instance;
  factory TftSummoner(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = TftSummoner._();
    }
    return _instance;
  }

  String get version => '1';
}

class ThirdPartyCode {
  ThirdPartyCode._();
  static ThirdPartyCode _instance;
  factory ThirdPartyCode(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = ThirdPartyCode._();
    }
    return _instance;
  }

  String get version => '4';
}

class TournamentStub {
  TournamentStub._();
  static TournamentStub _instance;
  factory TournamentStub(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = TournamentStub._();
    }
    return _instance;
  }

  String get version => '4';
}

class Tournament {
  Tournament._();
  static Tournament _instance;
  factory Tournament(ApiKeyStore keyStore) {
    if (_instance == null) {
      _instance = Tournament._();
    }
    return _instance;
  }

  String get version => '4';
}
