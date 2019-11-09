import '../api_key_store.dart';
import 'riot_api_services.dart';

class RiotApi {
  static ChampionMastery get championMastery => ChampionMastery(_keyStore);
  static Champion get champion => Champion(_keyStore);
  static LeagueExp get leagueExp => LeagueExp(_keyStore);
  static League get league => League(_keyStore);
  static LolStatus get lolStatus => LolStatus(_keyStore);
  static Match get match => Match(_keyStore);
  static Spectator get spectator => Spectator(_keyStore);
  static Summoner get summoner => Summoner(_keyStore);
  static TftLeague get tftLeague => TftLeague(_keyStore);
  static TftMatch get tftMatch => TftMatch(_keyStore);
  static TftSummoner get tftSummoner => TftSummoner(_keyStore);
  static ThirdPartyCode get thirdPartyCode => ThirdPartyCode(_keyStore);
  static TournamentStub get tournamentStub => TournamentStub(_keyStore);
  static Tournament get tournament => Tournament(_keyStore);

  static ApiKeyStore _keyStore = ApiKeyStore();

  static set apiKey(String key) => _keyStore.apiKey = key;
}
