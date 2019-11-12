// To parse this JSON data, do
//
//     final allChampionsList = allChampionsListFromJson(jsonString);

import 'dart:convert';

ChampionList championListFromJson(String str) =>
    ChampionList.fromJson(json.decode(str));

String championListToJson(ChampionList data) => json.encode(data.toJson());

class ChampionList {
  String type;
  String format;
  String version;
  Map<String, Champion> data;

  ChampionList({
    this.type,
    this.format,
    this.version,
    this.data,
  });

  factory ChampionList.fromJson(Map<String, dynamic> json) => new ChampionList(
        type: json["type"] == null ? null : json["type"],
        format: json["format"] == null ? null : json["format"],
        version: json["version"] == null ? null : json["version"],
        data: json["data"] == null
            ? null
            : new Map.from(json["data"]).map((k, v) =>
                new MapEntry<String, Champion>(k, Champion.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "format": format == null ? null : format,
        "version": version == null ? null : version,
        "data": data == null
            ? null
            : new Map.from(data)
                .map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Champion {
  String version;
  String id;
  String key;
  String name;
  String title;
  String blurb;
  Info info;
  Image image;
  List<String> tags;
  String partype;
  Map<String, double> stats;

  Champion({
    this.version,
    this.id,
    this.key,
    this.name,
    this.title,
    this.blurb,
    this.info,
    this.image,
    this.tags,
    this.partype,
    this.stats,
  });

  factory Champion.fromJson(Map<String, dynamic> json) => new Champion(
        version: json["version"] == null ? null : json["version"],
        id: json["id"] == null ? null : json["id"],
        key: json["key"] == null ? null : json["key"],
        name: json["name"] == null ? null : json["name"],
        title: json["title"] == null ? null : json["title"],
        blurb: json["blurb"] == null ? null : json["blurb"],
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        tags: json["tags"] == null
            ? null
            : new List<String>.from(json["tags"].map((x) => x)),
        partype: json["partype"] == null ? null : json["partype"],
        stats: json["stats"] == null
            ? null
            : new Map.from(json["stats"])
                .map((k, v) => new MapEntry<String, double>(k, v.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "version": version == null ? null : version,
        "id": id == null ? null : id,
        "key": key == null ? null : key,
        "name": name == null ? null : name,
        "title": title == null ? null : title,
        "blurb": blurb == null ? null : blurb,
        "info": info == null ? null : info.toJson(),
        "image": image == null ? null : image.toJson(),
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
        "partype": partype == null ? null : partype,
        "stats": stats == null
            ? null
            : new Map.from(stats)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
      };
}

class Image {
  String full;
  String sprite;
  String group;
  int x;
  int y;
  int w;
  int h;

  Image({
    this.full,
    this.sprite,
    this.group,
    this.x,
    this.y,
    this.w,
    this.h,
  });

  factory Image.fromJson(Map<String, dynamic> json) => new Image(
        full: json["full"] == null ? null : json["full"],
        sprite: json["sprite"] == null ? null : json["sprite"],
        group: json["group"] == null ? null : json["group"],
        x: json["x"] == null ? null : json["x"],
        y: json["y"] == null ? null : json["y"],
        w: json["w"] == null ? null : json["w"],
        h: json["h"] == null ? null : json["h"],
      );

  Map<String, dynamic> toJson() => {
        "full": full == null ? null : full,
        "sprite": sprite == null ? null : sprite,
        "group": group == null ? null : group,
        "x": x == null ? null : x,
        "y": y == null ? null : y,
        "w": w == null ? null : w,
        "h": h == null ? null : h,
      };
}

class Info {
  int attack;
  int defense;
  int magic;
  int difficulty;

  Info({
    this.attack,
    this.defense,
    this.magic,
    this.difficulty,
  });

  factory Info.fromJson(Map<String, dynamic> json) => new Info(
        attack: json["attack"] == null ? null : json["attack"],
        defense: json["defense"] == null ? null : json["defense"],
        magic: json["magic"] == null ? null : json["magic"],
        difficulty: json["difficulty"] == null ? null : json["difficulty"],
      );

  Map<String, dynamic> toJson() => {
        "attack": attack == null ? null : attack,
        "defense": defense == null ? null : defense,
        "magic": magic == null ? null : magic,
        "difficulty": difficulty == null ? null : difficulty,
      };
}
