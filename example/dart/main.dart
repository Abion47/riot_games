import 'package:riot_games/riot_games.dart';

import 'secrets.dart';

void main() async {
  RiotApi.apiKey = Secrets.apiKey;
  RiotApi.region = RiotApi.regions.na1;

  // final shardData = await RiotApi.lolStatus.getShardData();
  // print(shardData);

  // final summoner =
  //     await RiotApi.summoner.summonerFromName(Secrets.summonerName);
  // print(summoner);

  // final masteries = await RiotApi.championMastery
  //     .championMasteriesFromSummonerAndChampionId(summoner.id, 99);
  // print(masteries);

  // final champInfo = await RiotApi.champion.championRotations();
  // print(champInfo);

  // final leagueInfo = await RiotApi.leagueExp.leagueEntries(
  //   RiotApi.queues.rankedSolo5x5,
  //   RiotApi.tiers.gold,
  //   RiotApi.divisions.one,
  // );
  // print(leagueInfo);

  // final leagueList = await RiotApi.league
  //     .challengerLeaguesInQueue(RiotApi.queues.rankedSolo5x5);
  // print(leagueList.entries[0]);

  // final summonerLeagueList =
  //     await RiotApi.league.entriesForSummoner(summoner.id);
  // print(summonerLeagueList);

  // DataDragon().cdn = 'https://ddragon.leagueoflegends.com/cdn';
  // DataDragon().language = 'en_US';
  // DataDragon().version = '9.15.1';

  // final iconBytes = await DataDragon().getProfileIcon(588);

  // final file = File('output.png');
  // file.writeAsBytesSync(iconBytes);
}
