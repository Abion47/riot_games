import '../../api_key_store.dart';
import '../typedefs.dart';

class TftSummoner {
  TftSummoner._();
  static TftSummoner _instance;
  factory TftSummoner(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = TftSummoner._();
    }
    return _instance;
  }

  String get version => '1';
}
