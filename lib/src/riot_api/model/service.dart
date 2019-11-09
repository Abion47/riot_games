import 'package:equatable/equatable.dart';

import 'incident.dart';

class Service extends Equatable {
  final String status;
  final List<Incident> incidents;
  final String name;
  final String slug;

  Service({
    this.status,
    this.incidents,
    this.name,
    this.slug,
  });

  @override
  List<Object> get props => [
        this.status,
        this.incidents,
        this.name,
        this.slug,
      ];
}
