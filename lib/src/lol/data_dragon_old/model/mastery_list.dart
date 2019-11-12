// To parse this JSON data, do
//
//     final masteryList = masteryListFromJson(jsonString);

import 'dart:convert';

MasteryList masteryListFromJson(String str) =>
    MasteryList.fromJson(json.decode(str));

String masteryListToJson(MasteryList data) => json.encode(data.toJson());

class MasteryList {
  String type;
  String version;
  Tree tree;
  Map<String, Mastery> data;

  MasteryList({
    this.type,
    this.version,
    this.tree,
    this.data,
  });

  factory MasteryList.fromJson(Map<String, dynamic> json) => new MasteryList(
        type: json["type"] == null ? null : json["type"],
        version: json["version"] == null ? null : json["version"],
        tree: json["tree"] == null ? null : Tree.fromJson(json["tree"]),
        data: json["data"] == null
            ? null
            : new Map.from(json["data"]).map((k, v) =>
                new MapEntry<String, Mastery>(k, Mastery.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "version": version == null ? null : version,
        "tree": tree == null ? null : tree.toJson(),
        "data": data == null
            ? null
            : new Map.from(data)
                .map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Mastery {
  int id;
  String name;
  List<String> description;
  Image image;
  int ranks;
  String prerequisite;

  Mastery({
    this.id,
    this.name,
    this.description,
    this.image,
    this.ranks,
    this.prerequisite,
  });

  factory Mastery.fromJson(Map<String, dynamic> json) => new Mastery(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null
            ? null
            : new List<String>.from(json["description"].map((x) => x)),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        ranks: json["ranks"] == null ? null : json["ranks"],
        prerequisite: json["prereq"] == null ? null : json["prereq"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null
            ? null
            : new List<dynamic>.from(description.map((x) => x)),
        "image": image == null ? null : image.toJson(),
        "ranks": ranks == null ? null : ranks,
        "prereq": prerequisite == null ? null : prerequisite,
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

class Tree {
  List<List<Cunning>> ferocity;
  List<List<Cunning>> cunning;
  List<List<Cunning>> resolve;

  Tree({
    this.ferocity,
    this.cunning,
    this.resolve,
  });

  factory Tree.fromJson(Map<String, dynamic> json) => new Tree(
        ferocity: json["Ferocity"] == null
            ? null
            : new List<List<Cunning>>.from(json["Ferocity"].map((x) =>
                new List<Cunning>.from(x.map((x) => Cunning.fromJson(x))))),
        cunning: json["Cunning"] == null
            ? null
            : new List<List<Cunning>>.from(json["Cunning"].map((x) =>
                new List<Cunning>.from(x.map((x) => Cunning.fromJson(x))))),
        resolve: json["Resolve"] == null
            ? null
            : new List<List<Cunning>>.from(json["Resolve"].map((x) =>
                new List<Cunning>.from(x.map((x) => Cunning.fromJson(x))))),
      );

  Map<String, dynamic> toJson() => {
        "Ferocity": ferocity == null
            ? null
            : new List<dynamic>.from(ferocity
                .map((x) => new List<dynamic>.from(x.map((x) => x.toJson())))),
        "Cunning": cunning == null
            ? null
            : new List<dynamic>.from(cunning
                .map((x) => new List<dynamic>.from(x.map((x) => x.toJson())))),
        "Resolve": resolve == null
            ? null
            : new List<dynamic>.from(resolve
                .map((x) => new List<dynamic>.from(x.map((x) => x.toJson())))),
      };
}

class Cunning {
  String masteryId;
  String prereq;

  Cunning({
    this.masteryId,
    this.prereq,
  });

  factory Cunning.fromJson(Map<String, dynamic> json) => new Cunning(
        masteryId: json["masteryId"] == null ? null : json["masteryId"],
        prereq: json["prereq"] == null ? null : json["prereq"],
      );

  Map<String, dynamic> toJson() => {
        "masteryId": masteryId == null ? null : masteryId,
        "prereq": prereq == null ? null : prereq,
      };
}
