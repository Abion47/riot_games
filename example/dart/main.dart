import 'package:riot_games/riot_games.dart';

import 'secrets.dart';

void main() async {
  RiotApi.apiKey = Secrets.apiKey;

  final summoner =
      await RiotApi.summoner.summonerFromName(Secrets.summonerName);
  print(summoner);

  final masteries = await RiotApi.championMastery
      .championMasteriesFromSummonerAndChampionId(summoner.id, 99);
  print(masteries);

  final champInfo = await RiotApi.champion.championRotations();
  print(champInfo);

  // final summoner = await api.summoner
  //     .getSummonerByAccountId(encryptedAccountId: Secrets.accountId);
  // print(summoner);

  // DataDragon().cdn = 'https://ddragon.leagueoflegends.com/cdn';
  // DataDragon().language = 'en_US';
  // DataDragon().version = '9.15.1';

  // final iconBytes = await DataDragon().getProfileIcon(588);

  // final file = File('output.png');
  // file.writeAsBytesSync(iconBytes);
}
