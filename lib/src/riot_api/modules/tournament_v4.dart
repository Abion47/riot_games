import '../../api_key_store.dart';
import '../typedefs.dart';

class Tournament {
  Tournament._();
  static Tournament _instance;
  factory Tournament(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = Tournament._();
    }
    return _instance;
  }

  String get version => '4';
}
