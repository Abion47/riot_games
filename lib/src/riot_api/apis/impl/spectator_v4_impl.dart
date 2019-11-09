import 'package:riot_games/src/riot_api/model/current_game_info.dart';

import 'package:riot_games/src/riot_api/model/featured_games.dart';

import '../../../api_key_store.dart';
import '../champion_v3.dart';
import 'package:http/http.dart' as http;

import '../spectator_v4.dart';

class SpectatorV4Impl extends SpectatorV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  SpectatorV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<CurrentGameInfo> getActiveGameBySummoner(
      {String encryptedSummonerId}) {
    // TODO: implement getActiveGameBySummoner
    return null;
  }

  @override
  Future<FeaturedGames> getFeaturedGames() {
    // TODO: implement getFeaturedGames
    return null;
  }
}
