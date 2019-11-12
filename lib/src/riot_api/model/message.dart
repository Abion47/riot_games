import 'package:equatable/equatable.dart';

import 'translation.dart';

class Message extends Equatable {
  Message({
    this.severity,
    this.author,
    this.createdAt,
    this.translations,
    this.updatedAt,
    this.content,
    this.id,
  });

  /// The level of severity of the incident. Values: info, (...)
  final String severity;

  /// The name of the author of the message.
  final String author;

  /// The ISO-8601 timestamp when this message was originally created.
  final String createdAt;

  /// A list of alternate translations for the message. If the shard has
  /// only one primary locale, this may be empty.
  final List<Translation> translations;

  /// The ISO-8601 timestamp when this message was last updated.
  final String updatedAt;

  /// The text content of the message. The locale of the text will match the
  /// primary locale of the shard.
  final String content;

  /// The ID of the message.
  final String id;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        severity: json['severity'] ?? '',
        author: json['author'] ?? '',
        createdAt: json['created_at'] ?? '',
        updatedAt: json['updated_at'] ?? '',
        content: json['content'] ?? '',
        id: json['id'] ?? '',
        translations: json['translations'] == null
            ? null
            : json['translations']
                .map<Translation>((t) => Translation.fromJson(t))
                .toList(),
      );

  @override
  List<Object> get props => [
        this.severity,
        this.author,
        this.createdAt,
        this.translations,
        this.updatedAt,
        this.content,
        this.id,
      ];

  @override
  String toString() =>
      'Message ' +
      {
        'id': id,
        'severity': severity,
        'author': author,
        'createdAt': createdAt,
        'translations': translations,
        'updatedAt': updatedAt,
        'content': content,
      }.toString();
}
