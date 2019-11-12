import 'package:equatable/equatable.dart';

class Translation extends Equatable {
  Translation({
    this.locale,
    this.content,
    this.updatedAt,
  });

  /// The language locale used for this message translation.
  final String locale;

  /// The text content of this message.
  final String content;

  /// The ISO-8601 timestamp when this message was last updated.
  final String updatedAt;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        locale: json['locale'] ?? '',
        content: json['content'] ?? '',
        updatedAt: json['updated_at'] ?? '',
      );

  @override
  List<Object> get props => [
        this.locale,
        this.content,
        this.updatedAt,
      ];

  @override
  String toString() =>
      'Translation ' +
      {
        'locale': locale,
        'content': content,
        'updatedAt': updatedAt,
      }.toString();
}
