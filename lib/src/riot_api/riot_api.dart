import 'package:http/http.dart' as http;

import '../api_key_store.dart';
import 'constants/divisions.dart';
import 'constants/queues.dart';
import 'constants/regions.dart';
import 'constants/tiers.dart';
import 'modules/champion_mastery_v4.dart';
import 'modules/champion_v3.dart';
import 'modules/league_exp_v4.dart';
import 'modules/league_v4.dart';
import 'modules/lol_status_v3.dart';
import 'modules/match_v4.dart';
import 'modules/spectator_v4.dart';
import 'modules/summoner_v4.dart';
import 'modules/tft_league_v1.dart';
import 'modules/tft_match_v4.dart';
import 'modules/tft_summoner_v1.dart';
import 'modules/third_party_code_v4.dart';
import 'modules/tournament_stub_v4.dart';
import 'modules/tournament_v4.dart';
import 'typedefs.dart';

ClientGenerator _clientGenerator = () => http.Client();

class RiotApi {
  // Public Properties
  static String region = regions.na1;

  // Private Properties
  static ApiKeyStore _keyStore = ApiKeyStore();

  // Constants
  static const regions = Regions();
  static const queues = Queues();
  static const tiers = Tiers();
  static const divisions = Divisions();

  // Setters
  static set apiKey(String key) => _keyStore.apiKey = key;

  // Exposed API
  static ChampionMastery get championMastery =>
      ChampionMastery(_clientGenerator, _keyStore);
  static Champion get champion => Champion(_clientGenerator, _keyStore);
  static LeagueExp get leagueExp => LeagueExp(_clientGenerator, _keyStore);
  static League get league => League(_clientGenerator, _keyStore);
  static LolStatus get lolStatus => LolStatus(_clientGenerator, _keyStore);
  static Match get match => Match(_clientGenerator, _keyStore);
  static Spectator get spectator => Spectator(_clientGenerator, _keyStore);
  static Summoner get summoner => Summoner(_clientGenerator, _keyStore);
  static TftLeague get tftLeague => TftLeague(_clientGenerator, _keyStore);
  static TftMatch get tftMatch => TftMatch(_clientGenerator, _keyStore);
  static TftSummoner get tftSummoner =>
      TftSummoner(_clientGenerator, _keyStore);
  static ThirdPartyCode get thirdPartyCode =>
      ThirdPartyCode(_clientGenerator, _keyStore);
  static TournamentStub get tournamentStub =>
      TournamentStub(_clientGenerator, _keyStore);
  static Tournament get tournament => Tournament(_clientGenerator, _keyStore);
}
