final _keyMatchingPattern = RegExp(
    'RGAPI-[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}');

class ApiKeyStore {
  String _apiKey = '';
  String get apiKey => _apiKey;
  set apiKey(String key) {
    if (key == null) {
      print('[WARNING] The API key provided to Riot Games API module ' +
          'has been manually set to null. Calls to the module\'s methods ' +
          'will result in an error.');
    } else if (key.isEmpty) {
      print('[WARNING] The API key provided to Riot Games API module ' +
          'has been manually set to an empty string. Calls to the module\'s ' +
          'methods will result in an error.');
    } else if (!_keyMatchingPattern.hasMatch(key)) {
      print('[WARNING] The API key provided to the Riot Games API module ' +
          'does not appear to be a valid API key. Calls to the module\'s ' +
          'methods may result in an error.');
    }

    _apiKey = key;
  }

  void checkApiKey() {
    if (apiKey == null || apiKey.isEmpty) {
      throw StateError(
          'The API key has not been set. You must set the API key via the ' +
              '`RiotAPI.apiKey` property before using any RiotAPI methods.');
    }
  }
}
