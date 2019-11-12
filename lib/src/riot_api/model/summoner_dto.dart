import 'package:equatable/equatable.dart';

/// An object representing a summoner's account.
class SummonerDTO extends Equatable {
  SummonerDTO({
    this.profileIconId,
    this.name,
    this.puuid,
    this.summonerLevel,
    this.revisionDate,
    this.id,
    this.accountId,
  });

  /// ID of the summoner icon associated with the summoner.
  final int profileIconId;

  /// Summoner name.
  final String name;

  /// Encrypted PUUID. Exact length of 78 characters.
  ///
  /// The summoner PUUID is globally unique to a player. Transferring a player to a
  /// new region will not change the summoner PUUID.
  final String puuid;

  /// Summoner level associated with the summoner.
  final int summonerLevel;

  /// Date summoner was last modified specified as epoch milliseconds.
  /// The following events will update this timestamp: profile icon
  /// change, playing the tutorial or advanced tutorial, finishing a
  /// game, summoner name change.
  final int revisionDate;

  /// Encrypted summoner ID. Max length 63 characters.
  ///
  /// The summoner ID is unique to a player based on the region. Transfering a
  /// player to a new region will result in a new summoner ID.
  final String id;

  /// Encrypted account ID. Max length 56 characters.
  final String accountId;

  factory SummonerDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) throw ArgumentError.notNull('json');
    return SummonerDTO(
      profileIconId: json["profileIconId"] ?? 0,
      name: json["name"] ?? '',
      puuid: json["puuid"] ?? '',
      summonerLevel: json["summonerLevel"] ?? 0,
      accountId: json["accountId"] ?? '',
      id: json["id"] ?? '',
      revisionDate: json["revisionDate"] ?? 0,
    );
  }

  @override
  List<Object> get props => [
        profileIconId,
        name,
        puuid,
        summonerLevel,
        revisionDate,
        id,
        accountId,
      ];

  @override
  String toString() =>
      'SummonerDTO ' +
      {
        'profileIconId': profileIconId,
        'name': name,
        'puuid': puuid,
        'summonerLevel': summonerLevel,
        'revisionDate': revisionDate,
        'id': id,
        'accountId': accountId,
      }.toString();
}
