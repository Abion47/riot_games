import 'package:equatable/equatable.dart';

import 'service.dart';

class ShardStatus extends Equatable {
  final String name;
  final String regionTag;
  final String hostname;
  final List<Service> services;
  final String slug;
  final List<String> locales;

  ShardStatus({
    this.name,
    this.regionTag,
    this.hostname,
    this.services,
    this.slug,
    this.locales,
  });

  @override
  List<Object> get props => [
        this.name,
        this.regionTag,
        this.hostname,
        this.services,
        this.slug,
        this.locales,
      ];
}
