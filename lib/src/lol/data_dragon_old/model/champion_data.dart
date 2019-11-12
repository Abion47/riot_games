// To parse this JSON data, do
//
//     final championData = championDataFromJson(jsonString);

import 'dart:convert';

ChampionData championDataFromJson(String str) =>
    ChampionData.fromJson(json.decode(str));

String championDataToJson(ChampionData data) => json.encode(data.toJson());

class ChampionData {
  String type;
  String format;
  String version;
  Map<String, Champion> data;

  ChampionData({
    this.type,
    this.format,
    this.version,
    this.data,
  });

  factory ChampionData.fromJson(Map<String, dynamic> json) => new ChampionData(
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
  String id;
  String key;
  String name;
  String title;
  Image image;
  List<Skin> skins;
  String lore;
  String blurb;
  List<String> allyTips;
  List<String> enemyTips;
  List<String> tags;
  String parType;
  Info info;
  Map<String, double> stats;
  List<Spell> spells;
  Passive passive;
  List<RecommendedBuild> recommendedBuilds;

  Champion({
    this.id,
    this.key,
    this.name,
    this.title,
    this.image,
    this.skins,
    this.lore,
    this.blurb,
    this.allyTips,
    this.enemyTips,
    this.tags,
    this.parType,
    this.info,
    this.stats,
    this.spells,
    this.passive,
    this.recommendedBuilds,
  });

  factory Champion.fromJson(Map<String, dynamic> json) => new Champion(
        id: json["id"] == null ? null : json["id"],
        key: json["key"] == null ? null : json["key"],
        name: json["name"] == null ? null : json["name"],
        title: json["title"] == null ? null : json["title"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        skins: json["skins"] == null
            ? null
            : new List<Skin>.from(json["skins"].map((x) => Skin.fromJson(x))),
        lore: json["lore"] == null ? null : json["lore"],
        blurb: json["blurb"] == null ? null : json["blurb"],
        allyTips: json["allytips"] == null
            ? null
            : new List<String>.from(json["allytips"].map((x) => x)),
        enemyTips: json["enemytips"] == null
            ? null
            : new List<String>.from(json["enemytips"].map((x) => x)),
        tags: json["tags"] == null
            ? null
            : new List<String>.from(json["tags"].map((x) => x)),
        parType: json["partype"] == null ? null : json["partype"],
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        stats: json["stats"] == null
            ? null
            : new Map.from(json["stats"])
                .map((k, v) => new MapEntry<String, double>(k, v.toDouble())),
        spells: json["spells"] == null
            ? null
            : new List<Spell>.from(
                json["spells"].map((x) => Spell.fromJson(x))),
        passive:
            json["passive"] == null ? null : Passive.fromJson(json["passive"]),
        recommendedBuilds: json["recommended"] == null
            ? null
            : new List<RecommendedBuild>.from(
                json["recommended"].map((x) => RecommendedBuild.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "key": key == null ? null : key,
        "name": name == null ? null : name,
        "title": title == null ? null : title,
        "image": image == null ? null : image.toJson(),
        "skins": skins == null
            ? null
            : new List<dynamic>.from(skins.map((x) => x.toJson())),
        "lore": lore == null ? null : lore,
        "blurb": blurb == null ? null : blurb,
        "allytips": allyTips == null
            ? null
            : new List<dynamic>.from(allyTips.map((x) => x)),
        "enemytips": enemyTips == null
            ? null
            : new List<dynamic>.from(enemyTips.map((x) => x)),
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
        "partype": parType == null ? null : parType,
        "info": info == null ? null : info.toJson(),
        "stats": stats == null
            ? null
            : new Map.from(stats)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "spells": spells == null
            ? null
            : new List<dynamic>.from(spells.map((x) => x.toJson())),
        "passive": passive == null ? null : passive.toJson(),
        "recommended": recommendedBuilds == null
            ? null
            : new List<dynamic>.from(recommendedBuilds.map((x) => x.toJson())),
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

class Passive {
  String name;
  String description;
  Image image;

  Passive({
    this.name,
    this.description,
    this.image,
  });

  factory Passive.fromJson(Map<String, dynamic> json) => new Passive(
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "image": image == null ? null : image.toJson(),
      };
}

class RecommendedBuild {
  String champion;
  String title;
  String map;
  String mode;
  String type;
  String customTag;
  int sortrank;
  bool extensionPage;
  bool useObviousCheckmark;
  dynamic customPanel;
  List<Block> blocks;

  RecommendedBuild({
    this.champion,
    this.title,
    this.map,
    this.mode,
    this.type,
    this.customTag,
    this.sortrank,
    this.extensionPage,
    this.useObviousCheckmark,
    this.customPanel,
    this.blocks,
  });

  factory RecommendedBuild.fromJson(Map<String, dynamic> json) =>
      new RecommendedBuild(
        champion: json["champion"] == null ? null : json["champion"],
        title: json["title"] == null ? null : json["title"],
        map: json["map"] == null ? null : json["map"],
        mode: json["mode"] == null ? null : json["mode"],
        type: json["type"] == null ? null : json["type"],
        customTag: json["customTag"] == null ? null : json["customTag"],
        sortrank: json["sortrank"] == null ? null : json["sortrank"],
        extensionPage:
            json["extensionPage"] == null ? null : json["extensionPage"],
        useObviousCheckmark: json["useObviousCheckmark"] == null
            ? null
            : json["useObviousCheckmark"],
        customPanel: json["customPanel"],
        blocks: json["blocks"] == null
            ? null
            : new List<Block>.from(
                json["blocks"].map((x) => Block.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "champion": champion == null ? null : champion,
        "title": title == null ? null : title,
        "map": map == null ? null : map,
        "mode": mode == null ? null : mode,
        "type": type == null ? null : type,
        "customTag": customTag == null ? null : customTag,
        "sortrank": sortrank == null ? null : sortrank,
        "extensionPage": extensionPage == null ? null : extensionPage,
        "useObviousCheckmark":
            useObviousCheckmark == null ? null : useObviousCheckmark,
        "customPanel": customPanel,
        "blocks": blocks == null
            ? null
            : new List<dynamic>.from(blocks.map((x) => x.toJson())),
      };
}

class Block {
  String type;
  bool recMath;
  bool recSteps;
  int minSummonerLevel;
  int maxSummonerLevel;
  String showIfSummonerSpell;
  String hideIfSummonerSpell;
  String appendAfterSection;
  List<String> visibleWithAllOf;
  List<String> hiddenWithAnyOf;
  List<Item> items;

  Block({
    this.type,
    this.recMath,
    this.recSteps,
    this.minSummonerLevel,
    this.maxSummonerLevel,
    this.showIfSummonerSpell,
    this.hideIfSummonerSpell,
    this.appendAfterSection,
    this.visibleWithAllOf,
    this.hiddenWithAnyOf,
    this.items,
  });

  factory Block.fromJson(Map<String, dynamic> json) => new Block(
        type: json["type"] == null ? null : json["type"],
        recMath: json["recMath"] == null ? null : json["recMath"],
        recSteps: json["recSteps"] == null ? null : json["recSteps"],
        minSummonerLevel:
            json["minSummonerLevel"] == null ? null : json["minSummonerLevel"],
        maxSummonerLevel:
            json["maxSummonerLevel"] == null ? null : json["maxSummonerLevel"],
        showIfSummonerSpell: json["showIfSummonerSpell"] == null
            ? null
            : json["showIfSummonerSpell"],
        hideIfSummonerSpell: json["hideIfSummonerSpell"] == null
            ? null
            : json["hideIfSummonerSpell"],
        appendAfterSection: json["appendAfterSection"] == null
            ? null
            : json["appendAfterSection"],
        visibleWithAllOf: json["visibleWithAllOf"] == null
            ? null
            : new List<String>.from(json["visibleWithAllOf"].map((x) => x)),
        hiddenWithAnyOf: json["hiddenWithAnyOf"] == null
            ? null
            : new List<String>.from(json["hiddenWithAnyOf"].map((x) => x)),
        items: json["items"] == null
            ? null
            : new List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "recMath": recMath == null ? null : recMath,
        "recSteps": recSteps == null ? null : recSteps,
        "minSummonerLevel": minSummonerLevel == null ? null : minSummonerLevel,
        "maxSummonerLevel": maxSummonerLevel == null ? null : maxSummonerLevel,
        "showIfSummonerSpell":
            showIfSummonerSpell == null ? null : showIfSummonerSpell,
        "hideIfSummonerSpell":
            hideIfSummonerSpell == null ? null : hideIfSummonerSpell,
        "appendAfterSection":
            appendAfterSection == null ? null : appendAfterSection,
        "visibleWithAllOf": visibleWithAllOf == null
            ? null
            : new List<dynamic>.from(visibleWithAllOf.map((x) => x)),
        "hiddenWithAnyOf": hiddenWithAnyOf == null
            ? null
            : new List<dynamic>.from(hiddenWithAnyOf.map((x) => x)),
        "items": items == null
            ? null
            : new List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  String id;
  int count;
  bool hideCount;

  Item({
    this.id,
    this.count,
    this.hideCount,
  });

  factory Item.fromJson(Map<String, dynamic> json) => new Item(
        id: json["id"] == null ? null : json["id"],
        count: json["count"] == null ? null : json["count"],
        hideCount: json["hideCount"] == null ? null : json["hideCount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "count": count == null ? null : count,
        "hideCount": hideCount == null ? null : hideCount,
      };
}

class Skin {
  String id;
  int number;
  String name;
  bool chromas;

  Skin({
    this.id,
    this.number,
    this.name,
    this.chromas,
  });

  factory Skin.fromJson(Map<String, dynamic> json) => new Skin(
        id: json["id"] == null ? null : json["id"],
        number: json["num"] == null ? null : json["num"],
        name: json["name"] == null ? null : json["name"],
        chromas: json["chromas"] == null ? null : json["chromas"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "num": number == null ? null : number,
        "name": name == null ? null : name,
        "chromas": chromas == null ? null : chromas,
      };
}

class Spell {
  String id;
  String name;
  String description;
  String tooltip;
  Leveltip leveltip;
  int maxRank;
  List<int> cooldown;
  String cooldownBurn;
  List<int> cost;
  String costBurn;
  Datavalues dataValues;
  List<List<int>> effect;
  List<String> effectBurn;
  List<dynamic> vars;
  String costType;
  String maxammo;
  List<int> range;
  String rangeBurn;
  Image image;
  String resource;

  Spell({
    this.id,
    this.name,
    this.description,
    this.tooltip,
    this.leveltip,
    this.maxRank,
    this.cooldown,
    this.cooldownBurn,
    this.cost,
    this.costBurn,
    this.dataValues,
    this.effect,
    this.effectBurn,
    this.vars,
    this.costType,
    this.maxammo,
    this.range,
    this.rangeBurn,
    this.image,
    this.resource,
  });

  factory Spell.fromJson(Map<String, dynamic> json) => new Spell(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        leveltip: json["leveltip"] == null
            ? null
            : Leveltip.fromJson(json["leveltip"]),
        maxRank: json["maxrank"] == null ? null : json["maxrank"],
        cooldown: json["cooldown"] == null
            ? null
            : new List<int>.from(json["cooldown"].map((x) => x)),
        cooldownBurn:
            json["cooldownBurn"] == null ? null : json["cooldownBurn"],
        cost: json["cost"] == null
            ? null
            : new List<int>.from(json["cost"].map((x) => x)),
        costBurn: json["costBurn"] == null ? null : json["costBurn"],
        dataValues: json["datavalues"] == null
            ? null
            : Datavalues.fromJson(json["datavalues"]),
        effect: json["effect"] == null
            ? null
            : new List<List<int>>.from(json["effect"].map(
                (x) => x == null ? null : new List<int>.from(x.map((x) => x)))),
        effectBurn: json["effectBurn"] == null
            ? null
            : new List<String>.from(
                json["effectBurn"].map((x) => x == null ? null : x)),
        vars: json["vars"] == null
            ? null
            : new List<dynamic>.from(json["vars"].map((x) => x)),
        costType: json["costType"] == null ? null : json["costType"],
        maxammo: json["maxammo"] == null ? null : json["maxammo"],
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
        "leveltip": leveltip == null ? null : leveltip.toJson(),
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
        "vars":
            vars == null ? null : new List<dynamic>.from(vars.map((x) => x)),
        "costType": costType == null ? null : costType,
        "maxammo": maxammo == null ? null : maxammo,
        "range":
            range == null ? null : new List<dynamic>.from(range.map((x) => x)),
        "rangeBurn": rangeBurn == null ? null : rangeBurn,
        "image": image == null ? null : image.toJson(),
        "resource": resource == null ? null : resource,
      };
}

class Datavalues {
  Datavalues();

  factory Datavalues.fromJson(Map<String, dynamic> json) => new Datavalues();

  Map<String, dynamic> toJson() => {};
}

class Leveltip {
  List<String> label;
  List<String> effect;

  Leveltip({
    this.label,
    this.effect,
  });

  factory Leveltip.fromJson(Map<String, dynamic> json) => new Leveltip(
        label: json["label"] == null
            ? null
            : new List<String>.from(json["label"].map((x) => x)),
        effect: json["effect"] == null
            ? null
            : new List<String>.from(json["effect"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "label":
            label == null ? null : new List<dynamic>.from(label.map((x) => x)),
        "effect": effect == null
            ? null
            : new List<dynamic>.from(effect.map((x) => x)),
      };
}
