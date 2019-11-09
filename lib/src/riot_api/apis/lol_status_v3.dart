import '../model/shard_status.dart';

abstract class LolStatusV3 {
  Future<ShardStatus> getShardData();
}
