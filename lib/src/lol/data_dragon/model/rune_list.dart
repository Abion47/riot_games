// To parse this JSON data, do
//
//     final runeList = runeListFromJson(jsonString);

import 'dart:convert';

RuneList runeListFromJson(String str) => RuneList.fromJson(json.decode(str));

String runeListToJson(RuneList data) => json.encode(data.toJson());

class RuneList {
  String type;
  String version;
  BasicRuneDefinition basic;
  Map<String, Rune> data;

  RuneList({
    this.type,
    this.version,
    this.basic,
    this.data,
  });

  factory RuneList.fromJson(Map<String, dynamic> json) => new RuneList(
        type: json["type"] == null ? null : json["type"],
        version: json["version"] == null ? null : json["version"],
        basic: json["basic"] == null
            ? null
            : BasicRuneDefinition.fromJson(json["basic"]),
        data: json["data"] == null
            ? null
            : new Map.from(json["data"])
                .map((k, v) => new MapEntry<String, Rune>(k, Rune.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "version": version == null ? null : version,
        "basic": basic == null ? null : basic.toJson(),
        "data": data == null
            ? null
            : new Map.from(data)
                .map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class BasicRuneDefinition {
  String name;
  RuneData rune;
  Gold gold;
  String group;
  String description;
  String colloq;
  String plainText;
  bool consumed;
  int stacks;
  int depth;
  bool consumeOnFull;
  List<dynamic> from;
  List<dynamic> into;
  int specialRecipe;
  bool inStore;
  bool hideFromAll;
  String requiredChampion;
  Map<String, int> stats;
  List<dynamic> tags;
  Map<String, bool> maps;

  BasicRuneDefinition({
    this.name,
    this.rune,
    this.gold,
    this.group,
    this.description,
    this.colloq,
    this.plainText,
    this.consumed,
    this.stacks,
    this.depth,
    this.consumeOnFull,
    this.from,
    this.into,
    this.specialRecipe,
    this.inStore,
    this.hideFromAll,
    this.requiredChampion,
    this.stats,
    this.tags,
    this.maps,
  });

  factory BasicRuneDefinition.fromJson(Map<String, dynamic> json) =>
      new BasicRuneDefinition(
        name: json["name"] == null ? null : json["name"],
        rune: json["rune"] == null ? null : RuneData.fromJson(json["rune"]),
        gold: json["gold"] == null ? null : Gold.fromJson(json["gold"]),
        group: json["group"] == null ? null : json["group"],
        description: json["description"] == null ? null : json["description"],
        colloq: json["colloq"] == null ? null : json["colloq"],
        plainText: json["plaintext"] == null ? null : json["plaintext"],
        consumed: json["consumed"] == null ? null : json["consumed"],
        stacks: json["stacks"] == null ? null : json["stacks"],
        depth: json["depth"] == null ? null : json["depth"],
        consumeOnFull:
            json["consumeOnFull"] == null ? null : json["consumeOnFull"],
        from: json["from"] == null
            ? null
            : new List<dynamic>.from(json["from"].map((x) => x)),
        into: json["into"] == null
            ? null
            : new List<dynamic>.from(json["into"].map((x) => x)),
        specialRecipe:
            json["specialRecipe"] == null ? null : json["specialRecipe"],
        inStore: json["inStore"] == null ? null : json["inStore"],
        hideFromAll: json["hideFromAll"] == null ? null : json["hideFromAll"],
        requiredChampion:
            json["requiredChampion"] == null ? null : json["requiredChampion"],
        stats: json["stats"] == null
            ? null
            : new Map.from(json["stats"])
                .map((k, v) => new MapEntry<String, int>(k, v)),
        tags: json["tags"] == null
            ? null
            : new List<dynamic>.from(json["tags"].map((x) => x)),
        maps: json["maps"] == null
            ? null
            : new Map.from(json["maps"])
                .map((k, v) => new MapEntry<String, bool>(k, v)),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "rune": rune == null ? null : rune.toJson(),
        "gold": gold == null ? null : gold.toJson(),
        "group": group == null ? null : group,
        "description": description == null ? null : description,
        "colloq": colloq == null ? null : colloq,
        "plaintext": plainText == null ? null : plainText,
        "consumed": consumed == null ? null : consumed,
        "stacks": stacks == null ? null : stacks,
        "depth": depth == null ? null : depth,
        "consumeOnFull": consumeOnFull == null ? null : consumeOnFull,
        "from":
            from == null ? null : new List<dynamic>.from(from.map((x) => x)),
        "into":
            into == null ? null : new List<dynamic>.from(into.map((x) => x)),
        "specialRecipe": specialRecipe == null ? null : specialRecipe,
        "inStore": inStore == null ? null : inStore,
        "hideFromAll": hideFromAll == null ? null : hideFromAll,
        "requiredChampion": requiredChampion == null ? null : requiredChampion,
        "stats": stats == null
            ? null
            : new Map.from(stats)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
        "maps": maps == null
            ? null
            : new Map.from(maps)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
      };
}

class Gold {
  int base;
  int total;
  int sell;
  bool purchasable;

  Gold({
    this.base,
    this.total,
    this.sell,
    this.purchasable,
  });

  factory Gold.fromJson(Map<String, dynamic> json) => new Gold(
        base: json["base"] == null ? null : json["base"],
        total: json["total"] == null ? null : json["total"],
        sell: json["sell"] == null ? null : json["sell"],
        purchasable: json["purchasable"] == null ? null : json["purchasable"],
      );

  Map<String, dynamic> toJson() => {
        "base": base == null ? null : base,
        "total": total == null ? null : total,
        "sell": sell == null ? null : sell,
        "purchasable": purchasable == null ? null : purchasable,
      };
}

class Rune {
  String name;
  String description;
  Image image;
  RuneData rune;
  Map<String, double> stats;
  List<String> tags;
  dynamic colloq;
  dynamic plainText;

  Rune({
    this.name,
    this.description,
    this.image,
    this.rune,
    this.stats,
    this.tags,
    this.colloq,
    this.plainText,
  });

  factory Rune.fromJson(Map<String, dynamic> json) => new Rune(
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        rune: json["rune"] == null ? null : RuneData.fromJson(json["rune"]),
        stats: json["stats"] == null
            ? null
            : new Map.from(json["stats"])
                .map((k, v) => new MapEntry<String, double>(k, v.toDouble())),
        tags: json["tags"] == null
            ? null
            : new List<String>.from(json["tags"].map((x) => x)),
        colloq: json["colloq"],
        plainText: json["plaintext"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "image": image == null ? null : image.toJson(),
        "rune": rune == null ? null : rune.toJson(),
        "stats": stats == null
            ? null
            : new Map.from(stats)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
        "colloq": colloq,
        "plaintext": plainText,
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

class RuneData {
  bool isRune;
  int tier;
  String type;

  RuneData({
    this.isRune,
    this.tier,
    this.type,
  });

  factory RuneData.fromJson(Map<String, dynamic> json) => new RuneData(
        isRune: json["isrune"] == null ? null : json["isrune"],
        tier: json["tier"] == null ? null : json["tier"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "isrune": isRune == null ? null : isRune,
        "tier": tier == null ? null : tier,
        "type": type == null ? null : type,
      };
}
