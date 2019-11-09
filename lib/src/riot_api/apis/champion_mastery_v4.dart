import '../model/champion_mastery_dto.dart';

abstract class ChampionMasteryV4 {
  Future<List<ChampionMasteryDTO>> getChampionMasteriesFromSummonerId(
    String encryptedSummonerId,
  );

  Future<ChampionMasteryDTO> getChampionMasteriesFromSummonerAndChampionId(
    String encryptedSummonerId,
    int championId,
  );

  Future<int> getChampionMasteryScoreFromSummonerId(
    String encryptedSummonerId,
  );
}
