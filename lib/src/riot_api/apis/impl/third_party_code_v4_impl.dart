import 'package:http/http.dart' as http;

import '../../../api_key_store.dart';
import '../third_party_code_v4.dart';

class ThirdPartyCodeV4Impl extends ThirdPartyCodeV4 {
  final http.Client Function() clientGenerator;
  final ApiKeyStore apiKeyStore;

  ThirdPartyCodeV4Impl({
    this.clientGenerator,
    this.apiKeyStore,
  });

  @override
  Future<String> getThirdPartyCodeBySummonerId({String encryptedSummonerId}) {
    // TODO: implement getThirdPartyCodeBySummonerId
    return null;
  }
}
