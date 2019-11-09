// To parse this JSON data, do
//
//     final summonerSpellList = summonerSpellListFromJson(jsonString);

import 'dart:convert';

SummonerSpellList summonerSpellListFromJson(String str) =>
    SummonerSpellList.fromJson(json.decode(str));

String summonerSpellListToJson(SummonerSpellList data) =>
    json.encode(data.toJson());

class SummonerSpellList {
  String type;
  String version;
  Map<String, SummonerSpell> data;

  SummonerSpellList({
    this.type,
    this.version,
    this.data,
  });

  factory SummonerSpellList.fromJson(Map<String, dynamic> json) =>
      new SummonerSpellList(
        type: json["type"] == null ? null : json["type"],
        version: json["version"] == null ? null : json["version"],
        data: json["data"] == null
            ? null
            : new Map.from(json["data"]).map((k, v) =>
                new MapEntry<String, SummonerSpell>(
                    k, SummonerSpell.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "version": version == null ? null : version,
        "data": data == null
            ? null
            : new Map.from(data)
                .map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class SummonerSpell {
  String id;
  String name;
  String description;
  String tooltip;
  int maxRank;
  List<double> cooldown;
  String cooldownBurn;
  List<int> cost;
  String costBurn;
  DataValues dataValues;
  List<List<double>> effect;
  List<String> effectBurn;
  List<Var> vars;
  String key;
  int summonerLevel;
  List<String> modes;
  String costType;
  String maxAmmo;
  List<int> range;
  String rangeBurn;
  Image image;
  String resource;

  SummonerSpell({
    this.id,
    this.name,
    this.description,
    this.tooltip,
    this.maxRank,
    this.cooldown,
    this.cooldownBurn,
    this.cost,
    this.costBurn,
    this.dataValues,
    this.effect,
    this.effectBurn,
    this.vars,
    this.key,
    this.summonerLevel,
    this.modes,
    this.costType,
    this.maxAmmo,
    this.range,
    this.rangeBurn,
    this.image,
    this.resource,
  });

  factory SummonerSpell.fromJson(Map<String, dynamic> json) =>
      new SummonerSpell(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        maxRank: json["maxrank"] == null ? null : json["maxrank"],
        cooldown: json["cooldown"] == null
            ? null
            : new List<double>.from(json["cooldown"].map((x) => x.toDouble())),
        cooldownBurn:
            json["cooldownBurn"] == null ? null : json["cooldownBurn"],
        cost: json["cost"] == null
            ? null
            : new List<int>.from(json["cost"].map((x) => x)),
        costBurn: json["costBurn"] == null ? null : json["costBurn"],
        dataValues: json["datavalues"] == null
            ? null
            : DataValues.fromJson(json["datavalues"]),
        effect: json["effect"] == null
            ? null
            : new List<List<double>>.from(json["effect"].map((x) => x == null
                ? null
                : new List<double>.from(x.map((x) => x.toDouble())))),
        effectBurn: json["effectBurn"] == null
            ? null
            : new List<String>.from(
                json["effectBurn"].map((x) => x == null ? null : x)),
        vars: json["vars"] == null
            ? null
            : new List<Var>.from(json["vars"].map((x) => Var.fromJson(x))),
        key: json["key"] == null ? null : json["key"],
        summonerLevel:
            json["summonerLevel"] == null ? null : json["summonerLevel"],
        modes: json["modes"] == null
            ? null
            : new List<String>.from(json["modes"].map((x) => x)),
        costType: json["costType"] == null ? null : json["costType"],
        maxAmmo: json["maxammo"] == null ? null : json["maxammo"],
        range: json["range"] == null
            ? null
            : new List<int>.from(json["range"].map((x) => x)),
        rangeBurn: json["rangeBurn"] == null ? null : json["rangeBurn"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        resource: json["resource"] == null ? null : json["resource"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "tooltip": tooltip == null ? null : tooltip,
        "maxrank": maxRank == null ? null : maxRank,
        "cooldown": cooldown == null
            ? null
            : new List<dynamic>.from(cooldown.map((x) => x)),
        "cooldownBurn": cooldownBurn == null ? null : cooldownBurn,
        "cost":
            cost == null ? null : new List<dynamic>.from(cost.map((x) => x)),
        "costBurn": costBurn == null ? null : costBurn,
        "datavalues": dataValues == null ? null : dataValues.toJson(),
        "effect": effect == null
            ? null
            : new List<dynamic>.from(effect.map((x) =>
                x == null ? null : new List<dynamic>.from(x.map((x) => x)))),
        "effectBurn": effectBurn == null
            ? null
            : new List<dynamic>.from(
                effectBurn.map((x) => x == null ? null : x)),
        "vars": vars == null
            ? null
            : new List<dynamic>.from(vars.map((x) => x.toJson())),
        "key": key == null ? null : key,
        "summonerLevel": summonerLevel == null ? null : summonerLevel,
        "modes":
            modes == null ? null : new List<dynamic>.from(modes.map((x) => x)),
        "costType": costType == null ? null : costType,
        "maxammo": maxAmmo == null ? null : maxAmmo,
        "range":
            range == null ? null : new List<dynamic>.from(range.map((x) => x)),
        "rangeBurn": rangeBurn == null ? null : rangeBurn,
        "image": image == null ? null : image.toJson(),
        "resource": resource == null ? null : resource,
      };
}

class DataValues {
  DataValues();

  factory DataValues.fromJson(Map<String, dynamic> json) => new DataValues();

  Map<String, dynamic> toJson() => {};
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

class Var {
  String link;
  dynamic coefficient;
  String key;

  Var({
    this.link,
    this.coefficient,
    this.key,
  });

  factory Var.fromJson(Map<String, dynamic> json) => new Var(
        link: json["link"] == null ? null : json["link"],
        coefficient: json["coeff"],
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "link": link == null ? null : link,
        "coeff": coefficient,
        "key": key == null ? null : key,
      };
}
