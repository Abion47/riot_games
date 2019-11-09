import 'package:equatable/equatable.dart';

class PlayerDTO extends Equatable {
  final String currentPlatformId;
  final String summonerName;
  final String matchHistoryUri;
  final String platformId;
  final String currentAccountId;
  final int profileIcon;
  final String summonerId;
  final String accountId;

  PlayerDTO({
    this.currentPlatformId,
    this.summonerName,
    this.matchHistoryUri,
    this.platformId,
    this.currentAccountId,
    this.profileIcon,
    this.summonerId,
    this.accountId,
  });

  @override
  List<Object> get props => [
        this.currentPlatformId,
        this.summonerName,
        this.matchHistoryUri,
        this.platformId,
        this.currentAccountId,
        this.profileIcon,
        this.summonerId,
        this.accountId,
      ];
}
