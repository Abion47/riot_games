import 'package:equatable/equatable.dart';

import 'message.dart';

class Incident extends Equatable {
  Incident({
    this.active,
    this.createdAt,
    this.id,
    this.updates,
  });

  /// True if the incident is currently active; False if the incident is
  /// recent but has been resolved.
  final bool active;

  /// The ISO-8601 timestamp when the incident was first created.
  final String createdAt;

  /// The ID of the incident.
  final int id;

  /// A list of message updates involving the incident.
  final List<Message> updates;

  factory Incident.fromJson(Map<String, dynamic> json) => Incident(
        active: json['active'] ?? '',
        createdAt: json['created_at'] ?? '',
        id: json['id'] ?? '',
        updates: json['updates'] == null
            ? null
            : json['updates'].map<Message>((m) => Message.fromJson(m)).toList(),
      );

  @override
  List<Object> get props => [
        this.active,
        this.createdAt,
        this.id,
        this.updates,
      ];

  @override
  String toString() =>
      'Incident ' +
      {
        'active': active,
        'createdAt': createdAt,
        'id': id,
        'updates': updates,
      }.toString();
}
