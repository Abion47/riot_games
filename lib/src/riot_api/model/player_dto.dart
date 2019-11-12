import 'package:equatable/equatable.dart';

class PlayerDTO extends Equatable {
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

  /// The ID for the platform the match was played on.
  final String currentPlatformId;

  /// The name of the summoner.
  final String summonerName;

  /// URI path for the match history of the player.
  final String matchHistoryUri;

  /// Original platformId.
  final String platformId;

  /// Player's current accountId (Encrypted)
  final String currentAccountId;

  /// Index of the player's selected profile icon.
  final int profileIcon;

  /// Player's summonerId (Encrypted)
  final String summonerId;

  /// Player's original accountId (Encrypted)
  final String accountId;

  factory PlayerDTO.fromJson(Map<String, dynamic> json) => PlayerDTO(
        currentPlatformId: json['currentPlatformId'] ?? '',
        summonerName: json['summonerName'] ?? '',
        matchHistoryUri: json['matchHistoryUri'] ?? '',
        platformId: json['platformId'] ?? '',
        currentAccountId: json['currentAccountId'] ?? '',
        profileIcon: json['profileIcon'] ?? 0,
        summonerId: json['summonerId'] ?? '',
        accountId: json['accountId'] ?? '',
      );

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

  @override
  String toString() =>
      'PlayerDTO ' +
      {
        'currentPlatformId': currentPlatformId,
        'summonerName': summonerName,
        'matchHistoryUri': matchHistoryUri,
        'platformId': platformId,
        'currentAccountId': currentAccountId,
        'profileIcon': profileIcon,
        'summonerId': summonerId,
        'accountId': accountId,
      }.toString();
}
