import 'package:meta/meta.dart';

import '../model/current_game_info.dart';
import '../model/featured_games.dart';

abstract class SpectatorV4 {
  Future<CurrentGameInfo> getActiveGameBySummoner({
    @required String encryptedSummonerId,
  });

  Future<FeaturedGames> getFeaturedGames();
}
