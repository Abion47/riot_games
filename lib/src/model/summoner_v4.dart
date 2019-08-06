class SummonerByName {
  int profileIconId;
  String name;
  String puuid;
  int summonerLevel;
  String accountId;
  String id;
  int revisionDate;

  SummonerByName(
      {this.profileIconId,
      this.name,
      this.puuid,
      this.summonerLevel,
      this.accountId,
      this.id,
      this.revisionDate});

  SummonerByName.fromJson(Map<String, dynamic> json) {
    profileIconId = json['profileIconId'];
    name = json['name'];
    puuid = json['puuid'];
    summonerLevel = json['summonerLevel'];
    accountId = json['accountId'];
    id = json['id'];
    revisionDate = json['revisionDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profileIconId'] = this.profileIconId;
    data['name'] = this.name;
    data['puuid'] = this.puuid;
    data['summonerLevel'] = this.summonerLevel;
    data['accountId'] = this.accountId;
    data['id'] = this.id;
    data['revisionDate'] = this.revisionDate;
    return data;
  }
}