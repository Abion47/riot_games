import '../model/summoner_dto.dart';

abstract class SummonerV4 {
  Future<SummonerDTO> getSummonerFromAccountId(
    String encryptedAccountId,
  );

  Future<SummonerDTO> getSummonerFromName(
    String summonerName,
  );

  Future<SummonerDTO> getSummonerFromPuuid(
    String encryptedPuuid,
  );

  Future<SummonerDTO> getSummonerFromSummonerId(
    String encryptedSummonerId,
  );
}
