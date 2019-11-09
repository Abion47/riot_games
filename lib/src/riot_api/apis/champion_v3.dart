import '../model/champion_info.dart';

abstract class ChampionV3 {
  Future<ChampionInfo> getChampionRotations();
}
