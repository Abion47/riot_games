import '../../api_key_store.dart';
import '../typedefs.dart';

class TftLeague {
  TftLeague._();
  static TftLeague _instance;
  factory TftLeague(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = TftLeague._();
    }
    return _instance;
  }

  String get version => '1';
}
