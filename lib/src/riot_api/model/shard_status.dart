import 'package:equatable/equatable.dart';

import 'service.dart';

class ShardStatus extends Equatable {
  ShardStatus({
    this.name,
    this.regionTag,
    this.hostname,
    this.services,
    this.slug,
    this.locales,
  });

  /// Name of the shard.
  final String name;

  /// Tag for the shard's region.
  final String regionTag;

  /// Domain hostname for APIs made within the shard.
  final String hostname;

  /// List of status for the shard's services.
  final List<Service> services;

  /// Unknown (an internal name for the shard perhaps)
  final String slug;

  /// List of language locales primarily used within the shard.
  final List<String> locales;

  factory ShardStatus.fromJson(Map<String, dynamic> json) => ShardStatus(
        name: json['name'] ?? '',
        regionTag: json['region_tag'] ?? '',
        hostname: json['hostname'] ?? '',
        slug: json['slug'] ?? '',
        locales: json['locales']?.cast<String>(),
        services: json['services'] == null
            ? null
            : json['services']
                .map<Service>((s) => Service.fromJson(s))
                .toList(),
      );

  @override
  List<Object> get props => [
        this.name,
        this.regionTag,
        this.hostname,
        this.services,
        this.slug,
        this.locales,
      ];

  @override
  String toString() =>
      'ShardStatus ' +
      {
        'name': name,
        'regionTag': regionTag,
        'hostname': hostname,
        'services': services,
        'slug': slug,
        'locales': locales,
      }.toString();
}
