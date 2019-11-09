import 'package:equatable/equatable.dart';

import 'featured_game_info.dart';

class FeaturedGames extends Equatable {
  final int clientRefreshInterval;
  final List<FeaturedGameInfo> gameList;

  FeaturedGames({
    this.clientRefreshInterval,
    this.gameList,
  });

  @override
  List<Object> get props => [
        this.clientRefreshInterval,
        this.gameList,
      ];
}
