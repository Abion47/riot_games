const _hostName = "na1.api.riotgames.com";

class Endpoint {
  static RegExp _valueFinder = RegExp(r'{(\w+)}');

  Endpoint(this.raw);

  final String raw;

  final Map<String, String> _values = {};

  void operator []=(String key, dynamic value) {
    _values[key] = value.toString();
  }

  void initialize() {
    final matches = _valueFinder.allMatches(raw);
    for (var match in matches) {
      _values[match.group(1)] = null;
    }
  }

  Uri build([Map<String, String> queryParameters]) {
    var url = raw;
    for (var pair in _values.entries) {
      if (pair.value == null) {
        throw StateError(
            'Not all required parameters were set: ${_values.entries.where((p) => p.value == null).map((p) => p.key).toList()}');
      }
      url = url.replaceAll('{${pair.key}}', pair.value);
    }

    return Uri.https(_hostName, url, queryParameters);
  }
}
