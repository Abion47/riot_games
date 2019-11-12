import 'package:equatable/equatable.dart';

import 'incident.dart';

class Service extends Equatable {
  Service({
    this.status,
    this.incidents,
    this.name,
    this.slug,
  });

  /// The status of the service. Values: online, (...)
  final String status;

  /// A list of current or recent incidents affecting the service.
  final List<Incident> incidents;

  /// The name of the service.
  final String name;

  /// Unknown (an internal name for the service perhaps)
  final String slug;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        status: json['status'] ?? '',
        name: json['name'] ?? '',
        slug: json['slug'] ?? '',
        incidents: json['incidents'] == null
            ? null
            : json['incidents']
                .map<Incident>((i) => Incident.fromJson(i))
                .toList(),
      );

  @override
  List<Object> get props => [
        this.status,
        this.incidents,
        this.name,
        this.slug,
      ];

  @override
  String toString() =>
      'Service ' +
      {
        'status': status,
        'incidents': incidents,
        'name': name,
        'slug': slug,
      }.toString();
}
