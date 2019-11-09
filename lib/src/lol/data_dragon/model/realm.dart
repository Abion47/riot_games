// To parse this JSON data, do
//
//     final realm = realmFromJson(jsonString);

import 'dart:convert';

Realm realmFromJson(String str) => Realm.fromJson(json.decode(str));

String realmToJson(Realm data) => json.encode(data.toJson());

class Realm {
  ResourceVersions resourceVersions;
  String version;
  String language;
  String cdn;
  String dd;
  String lg;
  String css;
  int profileIconMax;
  dynamic store;

  Realm({
    this.resourceVersions,
    this.version,
    this.language,
    this.cdn,
    this.dd,
    this.lg,
    this.css,
    this.profileIconMax,
    this.store,
  });

  factory Realm.fromJson(Map<String, dynamic> json) => new Realm(
        resourceVersions:
            json["n"] == null ? null : ResourceVersions.fromJson(json["n"]),
        version: json["v"] == null ? null : json["v"],
        language: json["l"] == null ? null : json["l"],
        cdn: json["cdn"] == null ? null : json["cdn"],
        dd: json["dd"] == null ? null : json["dd"],
        lg: json["lg"] == null ? null : json["lg"],
        css: json["css"] == null ? null : json["css"],
        profileIconMax:
            json["profileiconmax"] == null ? null : json["profileiconmax"],
        store: json["store"],
      );

  Map<String, dynamic> toJson() => {
        "n": resourceVersions == null ? null : resourceVersions.toJson(),
        "v": version == null ? null : version,
        "l": language == null ? null : language,
        "cdn": cdn == null ? null : cdn,
        "dd": dd == null ? null : dd,
        "lg": lg == null ? null : lg,
        "css": css == null ? null : css,
        "profileiconmax": profileIconMax == null ? null : profileIconMax,
        "store": store,
      };
}

class ResourceVersions {
  String item;
  String rune;
  String mastery;
  String summoner;
  String champion;
  String profileicon;
  String map;
  String language;
  String sticker;

  ResourceVersions({
    this.item,
    this.rune,
    this.mastery,
    this.summoner,
    this.champion,
    this.profileicon,
    this.map,
    this.language,
    this.sticker,
  });

  factory ResourceVersions.fromJson(Map<String, dynamic> json) =>
      new ResourceVersions(
        item: json["item"] == null ? null : json["item"],
        rune: json["rune"] == null ? null : json["rune"],
        mastery: json["mastery"] == null ? null : json["mastery"],
        summoner: json["summoner"] == null ? null : json["summoner"],
        champion: json["champion"] == null ? null : json["champion"],
        profileicon: json["profileicon"] == null ? null : json["profileicon"],
        map: json["map"] == null ? null : json["map"],
        language: json["language"] == null ? null : json["language"],
        sticker: json["sticker"] == null ? null : json["sticker"],
      );

  Map<String, dynamic> toJson() => {
        "item": item == null ? null : item,
        "rune": rune == null ? null : rune,
        "mastery": mastery == null ? null : mastery,
        "summoner": summoner == null ? null : summoner,
        "champion": champion == null ? null : champion,
        "profileicon": profileicon == null ? null : profileicon,
        "map": map == null ? null : map,
        "language": language == null ? null : language,
        "sticker": sticker == null ? null : sticker,
      };
}
