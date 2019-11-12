import '../../api_key_store.dart';
import '../typedefs.dart';

class Spectator {
  Spectator._();
  static Spectator _instance;
  factory Spectator(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = Spectator._();
    }
    return _instance;
  }

  String get version => '4';
}
