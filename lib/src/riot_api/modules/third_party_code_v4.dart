import '../../api_key_store.dart';
import '../typedefs.dart';

class ThirdPartyCode {
  ThirdPartyCode._();
  static ThirdPartyCode _instance;
  factory ThirdPartyCode(
    ClientGenerator clientGenerator,
    ApiKeyStore keyStore,
  ) {
    if (_instance == null) {
      _instance = ThirdPartyCode._();
    }
    return _instance;
  }

  String get version => '4';
}
