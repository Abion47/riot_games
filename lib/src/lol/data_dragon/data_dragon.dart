import 'dart:typed_data';

import '../../internal_utility.dart';
import 'model/champion_data.dart';
import 'model/champion_list.dart';
import 'model/item_list.dart';
import 'model/mastery_list.dart';
import 'model/profile_icon_list.dart';
import 'model/realm.dart';
import 'model/summoner_spell_list.dart';

class DataDragon {
  static DataDragon _instance;
  DataDragon._();
  factory DataDragon() {
    if (_instance == null) {
      _instance = DataDragon._();
    }
    return _instance;
  }

  String _version = '';
  set version(String v) => _version = v;

  String _language = '';
  set language(String lang) => _language = lang;

  String _cdn = '';
  set cdn(String url) => _cdn = url;

  // Utility

  void _checkValues() {
    if (_cdn == null || _cdn.isEmpty) {
      throw StateError('CDN URL has not been set');
    }

    if (_version == null || _version.isEmpty) {
      throw StateError('Version has not been set');
    }

    if (_language == null || _language.isEmpty) {
      throw StateError('Language has not been set');
    }
  }

  Future<Uint8List> _getBinaryFile(String url) async {
    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.binary);

    if (response.code == 200) {
      return response.body;
    }

    throw response.toError();
  }

  // Bulk Data

  /// Dragon Tail is a TGZ file containing all of the League of Legends static assets for a
  /// given version. Don't call this method too often or you might get rate limited.
  Future<Uint8List> getDragonTail() {
    _checkValues();
    final url = '$_cdn/dragontail-$_version.tgz';
    return _getBinaryFile(url);
  }

  // Config Data

  Future<List<String>> getAllVersions() async {
    final url = 'https://ddragon.leagueoflegends.com/api/versions.json';

    final response = await sendHttpRequest(url, 'GET');

    if (response.code == 200) {
      return (response.body as List).map((x) => x as String).toList();
    }

    throw response.toError();
  }

  Future<Realm> getRealm(String regionCode) async {
    final url = 'https://ddragon.leagueoflegends.com/realms/$regionCode.json';

    final response = await sendHttpRequest(url, 'GET');

    if (response.code == 200) {
      return realmFromJson(response.body);
    }

    throw response.toError();
  }

  // Image Assets

  Future<Uint8List> getProfileIcon(int iconId) {
    _checkValues();
    final url = '$_cdn/$_version/img/profileicon/$iconId.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getChampionSplashArt(String championName, int skinId) {
    _checkValues();
    final url = '$_cdn/img/champion/splash/${championName}_$skinId.jpg';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getChampionLoadingScreenArt(
      String championName, int skinId) {
    _checkValues();
    final url = '$_cdn/img/champion/loading/${championName}_$skinId.jpg';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getChampionSquareArt(String championName) {
    _checkValues();
    final url = '$_cdn/$_version/img/champion/$championName.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getChampionPassiveAbilityArt(String championName) {
    _checkValues();
    final url = '$_cdn/$_version/img/passive/${championName}_P.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getChampionAbilityArt(String abilityName) {
    _checkValues();
    final url = '$_cdn/$_version/img/spell/$abilityName.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getSummonerSpellArt(String spellName) {
    _checkValues();
    final url = '$_cdn/$_version/img/spell/$spellName.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getItemArt(int itemId) {
    _checkValues();
    final url = '$_cdn/$_version/img/item/$itemId.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getMasteryArt(int masteryId) {
    _checkValues();
    final url = '$_cdn/$_version/img/mastery/$masteryId.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getRuneArt(int runeId) {
    _checkValues();
    final url = '$_cdn/$_version/img/rune/$runeId.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getSpriteArt(String spriteName) {
    _checkValues();
    final url = '$_cdn/$_version/img/sprite/$spriteName.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getMinimap(int mapId) {
    _checkValues();
    final url = '$_cdn/$_version/img/map/$mapId.png';
    return _getBinaryFile(url);
  }

  Future<Uint8List> getScoreboardIcon(String iconName) {
    _checkValues();
    final url = '$_cdn/$_version/img/ui/$iconName.png';
    return _getBinaryFile(url);
  }

  // League Data

  Future<ProfileIconList> getProfileIconList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/profileicon.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return profileIconListFromJson(response.body);
    }

    throw response.toError();
  }

  Future<ChampionList> getChampionList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/champion.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return championListFromJson(response.body);
    }

    throw response.toError();
  }

  Future<ChampionData> getChampionData(String championName) async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/champion/$championName.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return championDataFromJson(response.body);
    }

    throw response.toError();
  }

  Future<ItemList> getItemList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/item.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return itemListFromJson(response.body);
    }

    throw response.toError();
  }

  // Max version: 7.23.1
  Future<MasteryList> getMasteryList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/mastery.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return masteryListFromJson(response.body);
    }

    throw response.toError();
  }

  // Max version: 7.23.1
  Future<ChampionData> getRuneList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/rune.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return championDataFromJson(response.body);
    }

    throw response.toError();
  }

  Future<SummonerSpellList> getSummonerSpellList() async {
    _checkValues();

    final url = '$_cdn/$_version/data/$_language/summoner.json';

    final response =
        await sendHttpRequest(url, 'GET', responseType: ResponseType.json);

    if (response.code == 200) {
      return summonerSpellListFromJson(response.body);
    }

    throw response.toError();
  }
}
