// To parse this JSON data, do
//
//     final itemList = itemListFromJson(jsonString);

import 'dart:convert';

ItemList itemListFromJson(String str) => ItemList.fromJson(json.decode(str));

String itemListToJson(ItemList data) => json.encode(data.toJson());

class ItemList {
  String type;
  String version;
  ItemDefinition basic;
  Map<String, ItemDefinition> data;
  List<Group> groups;
  List<Tree> tree;

  ItemList({
    this.type,
    this.version,
    this.basic,
    this.data,
    this.groups,
    this.tree,
  });

  factory ItemList.fromJson(Map<String, dynamic> json) => new ItemList(
        type: json["type"] == null ? null : json["type"],
        version: json["version"] == null ? null : json["version"],
        basic: json["basic"] == null
            ? null
            : ItemDefinition.fromJson(json["basic"]),
        data: json["data"] == null
            ? null
            : new Map.from(json["data"]).map((k, v) =>
                new MapEntry<String, ItemDefinition>(
                    k, ItemDefinition.fromJson(v))),
        groups: json["groups"] == null
            ? null
            : new List<Group>.from(
                json["groups"].map((x) => Group.fromJson(x))),
        tree: json["tree"] == null
            ? null
            : new List<Tree>.from(json["tree"].map((x) => Tree.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "version": version == null ? null : version,
        "basic": basic == null ? null : basic.toJson(),
        "data": data == null
            ? null
            : new Map.from(data)
                .map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
        "groups": groups == null
            ? null
            : new List<dynamic>.from(groups.map((x) => x.toJson())),
        "tree": tree == null
            ? null
            : new List<dynamic>.from(tree.map((x) => x.toJson())),
      };
}

class ItemDefinition {
  String name;
  String description;
  String colloq;
  String plaintext;
  List<String> into;
  Image image;
  Gold gold;
  List<String> tags;
  Map<String, bool> maps;
  Map<String, double> stats;
  bool inStore;
  List<String> from;
  Effect effect;
  int depth;
  int stacks;
  bool consumed;
  bool hideFromAll;
  bool consumeOnFull;
  int specialRecipe;
  String requiredChampion;
  String requiredAlly;

  ItemDefinition({
    this.name,
    this.description,
    this.colloq,
    this.plaintext,
    this.into,
    this.image,
    this.gold,
    this.tags,
    this.maps,
    this.stats,
    this.inStore,
    this.from,
    this.effect,
    this.depth,
    this.stacks,
    this.consumed,
    this.hideFromAll,
    this.consumeOnFull,
    this.specialRecipe,
    this.requiredChampion,
    this.requiredAlly,
  });

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      new ItemDefinition(
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        colloq: json["colloq"] == null ? null : json["colloq"],
        plaintext: json["plaintext"] == null ? null : json["plaintext"],
        into: json["into"] == null
            ? null
            : new List<String>.from(json["into"].map((x) => x)),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        gold: json["gold"] == null ? null : Gold.fromJson(json["gold"]),
        tags: json["tags"] == null
            ? null
            : new List<String>.from(json["tags"].map((x) => x)),
        maps: json["maps"] == null
            ? null
            : new Map.from(json["maps"])
                .map((k, v) => new MapEntry<String, bool>(k, v)),
        stats: json["stats"] == null
            ? null
            : new Map.from(json["stats"])
                .map((k, v) => new MapEntry<String, double>(k, v.toDouble())),
        inStore: json["inStore"] == null ? null : json["inStore"],
        from: json["from"] == null
            ? null
            : new List<String>.from(json["from"].map((x) => x)),
        effect: json["effect"] == null ? null : Effect.fromJson(json["effect"]),
        depth: json["depth"] == null ? null : json["depth"],
        stacks: json["stacks"] == null ? null : json["stacks"],
        consumed: json["consumed"] == null ? null : json["consumed"],
        hideFromAll: json["hideFromAll"] == null ? null : json["hideFromAll"],
        consumeOnFull:
            json["consumeOnFull"] == null ? null : json["consumeOnFull"],
        specialRecipe:
            json["specialRecipe"] == null ? null : json["specialRecipe"],
        requiredChampion:
            json["requiredChampion"] == null ? null : json["requiredChampion"],
        requiredAlly:
            json["requiredAlly"] == null ? null : json["requiredAlly"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "colloq": colloq == null ? null : colloq,
        "plaintext": plaintext == null ? null : plaintext,
        "into":
            into == null ? null : new List<dynamic>.from(into.map((x) => x)),
        "image": image == null ? null : image.toJson(),
        "gold": gold == null ? null : gold.toJson(),
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
        "maps": maps == null
            ? null
            : new Map.from(maps)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "stats": stats == null
            ? null
            : new Map.from(stats)
                .map((k, v) => new MapEntry<String, dynamic>(k, v)),
        "inStore": inStore == null ? null : inStore,
        "from":
            from == null ? null : new List<dynamic>.from(from.map((x) => x)),
        "effect": effect == null ? null : effect.toJson(),
        "depth": depth == null ? null : depth,
        "stacks": stacks == null ? null : stacks,
        "consumed": consumed == null ? null : consumed,
        "hideFromAll": hideFromAll == null ? null : hideFromAll,
        "consumeOnFull": consumeOnFull == null ? null : consumeOnFull,
        "specialRecipe": specialRecipe == null ? null : specialRecipe,
        "requiredChampion": requiredChampion == null ? null : requiredChampion,
        "requiredAlly": requiredAlly == null ? null : requiredAlly,
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
  bool isrune;
  int tier;
  String type;

  Rune({
    this.isrune,
    this.tier,
    this.type,
  });

  factory Rune.fromJson(Map<String, dynamic> json) => new Rune(
        isrune: json["isrune"] == null ? null : json["isrune"],
        tier: json["tier"] == null ? null : json["tier"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "isrune": isrune == null ? null : isrune,
        "tier": tier == null ? null : tier,
        "type": type == null ? null : type,
      };
}

class Effect {
  String effect1Amount;
  String effect2Amount;
  String effect3Amount;
  String effect4Amount;
  String effect5Amount;
  String effect6Amount;
  String effect7Amount;
  String effect8Amount;
  String effect9Amount;
  String effect10Amount;
  String effect11Amount;
  String effect12Amount;
  String effect13Amount;
  String effect14Amount;
  String effect15Amount;
  String effect16Amount;
  String effect17Amount;
  String effect18Amount;
  String effect19Amount;
  String effect20Amount;

  Effect({
    this.effect1Amount,
    this.effect2Amount,
    this.effect3Amount,
    this.effect4Amount,
    this.effect5Amount,
    this.effect6Amount,
    this.effect7Amount,
    this.effect8Amount,
    this.effect9Amount,
    this.effect10Amount,
    this.effect11Amount,
    this.effect12Amount,
    this.effect13Amount,
    this.effect14Amount,
    this.effect15Amount,
    this.effect16Amount,
    this.effect17Amount,
    this.effect18Amount,
    this.effect19Amount,
    this.effect20Amount,
  });

  factory Effect.fromJson(Map<String, dynamic> json) => new Effect(
        effect1Amount:
            json["Effect1Amount"] == null ? null : json["Effect1Amount"],
        effect2Amount:
            json["Effect2Amount"] == null ? null : json["Effect2Amount"],
        effect3Amount:
            json["Effect3Amount"] == null ? null : json["Effect3Amount"],
        effect4Amount:
            json["Effect4Amount"] == null ? null : json["Effect4Amount"],
        effect5Amount:
            json["Effect5Amount"] == null ? null : json["Effect5Amount"],
        effect6Amount:
            json["Effect6Amount"] == null ? null : json["Effect6Amount"],
        effect7Amount:
            json["Effect7Amount"] == null ? null : json["Effect7Amount"],
        effect8Amount:
            json["Effect8Amount"] == null ? null : json["Effect8Amount"],
        effect9Amount:
            json["Effect9Amount"] == null ? null : json["Effect9Amount"],
        effect10Amount:
            json["Effect10Amount"] == null ? null : json["Effect10Amount"],
        effect11Amount:
            json["Effect11Amount"] == null ? null : json["Effect11Amount"],
        effect12Amount:
            json["Effect12Amount"] == null ? null : json["Effect12Amount"],
        effect13Amount:
            json["Effect13Amount"] == null ? null : json["Effect13Amount"],
        effect14Amount:
            json["Effect14Amount"] == null ? null : json["Effect14Amount"],
        effect15Amount:
            json["Effect15Amount"] == null ? null : json["Effect15Amount"],
        effect16Amount:
            json["Effect16Amount"] == null ? null : json["Effect16Amount"],
        effect17Amount:
            json["Effect17Amount"] == null ? null : json["Effect17Amount"],
        effect18Amount:
            json["Effect18Amount"] == null ? null : json["Effect18Amount"],
        effect19Amount:
            json["Effect19Amount"] == null ? null : json["Effect19Amount"],
        effect20Amount:
            json["Effect20Amount"] == null ? null : json["Effect20Amount"],
      );

  Map<String, dynamic> toJson() => {
        "Effect1Amount": effect1Amount == null ? null : effect1Amount,
        "Effect2Amount": effect2Amount == null ? null : effect2Amount,
        "Effect3Amount": effect3Amount == null ? null : effect3Amount,
        "Effect4Amount": effect4Amount == null ? null : effect4Amount,
        "Effect5Amount": effect5Amount == null ? null : effect5Amount,
        "Effect6Amount": effect6Amount == null ? null : effect6Amount,
        "Effect7Amount": effect7Amount == null ? null : effect7Amount,
        "Effect8Amount": effect8Amount == null ? null : effect8Amount,
        "Effect9Amount": effect9Amount == null ? null : effect9Amount,
        "Effect10Amount": effect10Amount == null ? null : effect10Amount,
        "Effect11Amount": effect11Amount == null ? null : effect11Amount,
        "Effect12Amount": effect12Amount == null ? null : effect12Amount,
        "Effect13Amount": effect13Amount == null ? null : effect13Amount,
        "Effect14Amount": effect14Amount == null ? null : effect14Amount,
        "Effect15Amount": effect15Amount == null ? null : effect15Amount,
        "Effect16Amount": effect16Amount == null ? null : effect16Amount,
        "Effect17Amount": effect17Amount == null ? null : effect17Amount,
        "Effect18Amount": effect18Amount == null ? null : effect18Amount,
        "Effect19Amount": effect19Amount == null ? null : effect19Amount,
        "Effect20Amount": effect20Amount == null ? null : effect20Amount,
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

class Group {
  String id;
  String maxGroupOwnable;

  Group({
    this.id,
    this.maxGroupOwnable,
  });

  factory Group.fromJson(Map<String, dynamic> json) => new Group(
        id: json["id"] == null ? null : json["id"],
        maxGroupOwnable:
            json["MaxGroupOwnable"] == null ? null : json["MaxGroupOwnable"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "MaxGroupOwnable": maxGroupOwnable == null ? null : maxGroupOwnable,
      };
}

class Tree {
  String header;
  List<String> tags;

  Tree({
    this.header,
    this.tags,
  });

  factory Tree.fromJson(Map<String, dynamic> json) => new Tree(
        header: json["header"] == null ? null : json["header"],
        tags: json["tags"] == null
            ? null
            : new List<String>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "header": header == null ? null : header,
        "tags":
            tags == null ? null : new List<dynamic>.from(tags.map((x) => x)),
      };
}
