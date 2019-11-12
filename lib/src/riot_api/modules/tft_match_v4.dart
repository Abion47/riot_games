import '../../api_key_store.dart';
import '../typedefs.dart';

class TftMatch {
  TftMatch._();
  static TftMatch _instance;
  factory TftMatch(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = TftMatch._();
    }
    return _instance;
  }

  String get version => '1';
}
