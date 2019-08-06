get SummonerV4_getSummonerByName => Endpoint('https://{hostName}/lol/summoner/v4/summoners/by-name/{summonerName}')..initialize();

class Endpoint {
  static RegExp _valueFinder = RegExp(r'{\w+}');

  const Endpoint(this.raw);

  final String raw;

  final Map<String, String> _values = const {};

  void operator []=(String key, String value) {
    _values[key] = value;
  }

  void initialize() {
    final matches = _valueFinder.allMatches(raw);
    for (var match in matches) {
      _values[match.group(0)] = null;
    }
  }

  String build() {
    var url = raw;
    for (var pair in _values.entries) {
      if (pair.value == null) {
        throw StateError('Not all required parameters were set.');
      }
      url = url.replaceAll('{${pair.key}}', pair.value);
    }
    return url;
  }
}