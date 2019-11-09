// To parse this JSON data, do
//
//     final shardData = shardDataFromJson(jsonString);

import 'dart:convert';

ShardData shardDataFromJson(String str) => ShardData.fromJson(json.decode(str));

String shardDataToJson(ShardData data) => json.encode(data.toJson());

class ShardData {
  String name;
  String regionTag;
  String hostname;
  List<Service> services;
  String slug;
  List<String> locales;

  ShardData({
    this.name,
    this.regionTag,
    this.hostname,
    this.services,
    this.slug,
    this.locales,
  });

  factory ShardData.fromJson(Map<String, dynamic> json) => new ShardData(
        name: json["name"] == null ? null : json["name"],
        regionTag: json["region_tag"] == null ? null : json["region_tag"],
        hostname: json["hostname"] == null ? null : json["hostname"],
        services: json["services"] == null
            ? null
            : new List<Service>.from(
                json["services"].map((x) => Service.fromJson(x))),
        slug: json["slug"] == null ? null : json["slug"],
        locales: json["locales"] == null
            ? null
            : new List<String>.from(json["locales"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "region_tag": regionTag == null ? null : regionTag,
        "hostname": hostname == null ? null : hostname,
        "services": services == null
            ? null
            : new List<dynamic>.from(services.map((x) => x.toJson())),
        "slug": slug == null ? null : slug,
        "locales": locales == null
            ? null
            : new List<dynamic>.from(locales.map((x) => x)),
      };

  @override
  String toString() =>
      'name: $name, regionTag: $regionTag, hostname: $hostname, services: $services, slug: $slug, locales: $locales';
}

class Service {
  String status;
  List<Incident> incidents;
  String name;
  String slug;

  Service({
    this.status,
    this.incidents,
    this.name,
    this.slug,
  });

  factory Service.fromJson(Map<String, dynamic> json) => new Service(
        status: json["status"] == null ? null : json["status"],
        incidents: json["incidents"] == null
            ? null
            : new List<Incident>.from(
                json["incidents"].map((x) => Incident.fromJson(x))),
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "incidents": incidents == null
            ? null
            : new List<dynamic>.from(incidents.map((x) => x.toJson())),
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
      };

  @override
  String toString() =>
      'status: $status, incidents: $incidents, name: $name, slug: $slug';
}

class Incident {
  bool active;
  DateTime createdAt;
  int id;
  List<Update> updates;

  Incident({
    this.active,
    this.createdAt,
    this.id,
    this.updates,
  });

  factory Incident.fromJson(Map<String, dynamic> json) => new Incident(
        active: json["active"] == null ? null : json["active"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"] == null ? null : json["id"],
        updates: json["updates"] == null
            ? null
            : new List<Update>.from(
                json["updates"].map((x) => Update.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "active": active == null ? null : active,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "id": id == null ? null : id,
        "updates": updates == null
            ? null
            : new List<dynamic>.from(updates.map((x) => x.toJson())),
      };

  @override
  String toString() =>
      'active: $active, createdAt: $createdAt, id: $id, updates: $updates';
}

class Update {
  String severity;
  String author;
  DateTime createdAt;
  List<Translation> translations;
  DateTime updatedAt;
  String content;
  String id;

  Update({
    this.severity,
    this.author,
    this.createdAt,
    this.translations,
    this.updatedAt,
    this.content,
    this.id,
  });

  factory Update.fromJson(Map<String, dynamic> json) => new Update(
        severity: json["severity"] == null ? null : json["severity"],
        author: json["author"] == null ? null : json["author"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        translations: json["translations"] == null
            ? null
            : new List<Translation>.from(
                json["translations"].map((x) => Translation.fromJson(x))),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        content: json["content"] == null ? null : json["content"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "severity": severity == null ? null : severity,
        "author": author == null ? null : author,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "translations": translations == null
            ? null
            : new List<dynamic>.from(translations.map((x) => x)),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "content": content == null ? null : content,
        "id": id == null ? null : id,
      };

  @override
  String toString() =>
      'severity: $severity, author: $author, createdAt: $createdAt, translations: $translations, updatedAt: $updatedAt, content: $content, id: $id';
}

class Translation {
  String locale;
  String content;
  String updatedAt;

  Translation({
    this.locale,
    this.content,
    this.updatedAt,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        locale: json['locale'] == null ? null : json['locale'],
        content: json['content'] == null ? null : json['content'],
        updatedAt: json['updated_at'] == null ? null : json['updated_at'],
      );

  Map<String, dynamic> toJson() => {
        'locale': locale,
        'content': content,
        'updated_at': updatedAt,
      };

  @override
  String toString() =>
      'locale: $locale, content: $content, updatedAt: $updatedAt';
}
