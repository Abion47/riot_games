import '../../api_key_store.dart';
import '../typedefs.dart';

class TournamentStub {
  TournamentStub._();
  static TournamentStub _instance;
  factory TournamentStub(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = TournamentStub._();
    }
    return _instance;
  }

  String get version => '4';
}
