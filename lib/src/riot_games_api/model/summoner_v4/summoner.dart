// To parse this JSON data, do
//
//     final summonerByName = summonerByNameFromJson(jsonString);

import 'dart:convert';

Summoner summonerFromJson(String str) => Summoner.fromJson(json.decode(str));

String summonerToJson(Summoner data) => json.encode(data.toJson());

class Summoner {
  int profileIconId;
  String name;
  String puuid;
  int summonerLevel;
  String accountId;
  String id;
  DateTime revisionDate;

  Summoner({
    this.profileIconId,
    this.name,
    this.puuid,
    this.summonerLevel,
    this.accountId,
    this.id,
    this.revisionDate,
  });

  factory Summoner.fromJson(Map<String, dynamic> json) => new Summoner(
        profileIconId:
            json["profileIconId"] == null ? null : json["profileIconId"],
        name: json["name"] == null ? null : json["name"],
        puuid: json["puuid"] == null ? null : json["puuid"],
        summonerLevel:
            json["summonerLevel"] == null ? null : json["summonerLevel"],
        accountId: json["accountId"] == null ? null : json["accountId"],
        id: json["id"] == null ? null : json["id"],
        revisionDate: json["revisionDate"] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(json["revisionDate"],
                isUtc: true),
      );

  Map<String, dynamic> toJson() => {
        "profileIconId": profileIconId == null ? null : profileIconId,
        "name": name == null ? null : name,
        "puuid": puuid == null ? null : puuid,
        "summonerLevel": summonerLevel == null ? null : summonerLevel,
        "accountId": accountId == null ? null : accountId,
        "id": id == null ? null : id,
        "revisionDate": revisionDate == null ? null : revisionDate,
      };

  @override
  String toString() =>
      'profileIconId: $profileIconId, name: $name, puuid: $puuid, summonerLevel: $summonerLevel, accountId: $accountId, id: $id, revisionDate: $revisionDate';
}
