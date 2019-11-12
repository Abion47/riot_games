// To parse this JSON data, do
//
//     final profileIcons = profileIconsFromJson(jsonString);

import 'dart:convert';

ProfileIconList profileIconListFromJson(String str) =>
    ProfileIconList.fromJson(json.decode(str));

String profileIconListToJson(ProfileIconList data) =>
    json.encode(data.toJson());

class ProfileIconList {
  String type;
  String version;
  Map<String, Icon> data;

  ProfileIconList({
    this.type,
    this.version,
    this.data,
  });

  factory ProfileIconList.fromJson(Map<String, dynamic> json) =>
      new ProfileIconList(
        type: json["type"] == null ? null : json["type"],
        version: json["version"] == null ? null : json["version"],
        data: json["data"] == null
            ? null
            : new Map.from(json["data"])
                .map((k, v) => new MapEntry<String, Icon>(k, Icon.fromJson(v))),
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

class Icon {
  int id;
  Image image;

  Icon({
    this.id,
    this.image,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => new Icon(
        id: json["id"] == null ? null : json["id"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image.toJson(),
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
