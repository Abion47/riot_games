import 'package:equatable/equatable.dart';
import 'package:riot_games/src/riot_api/model/translation.dart';

class Message extends Equatable {
  final String severity;
  final String author;
  final String createdAt;
  final List<Translation> translations;
  final String updatedAt;
  final String content;
  final String id;

  Message({
    this.severity,
    this.author,
    this.createdAt,
    this.translations,
    this.updatedAt,
    this.content,
    this.id,
  });

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
}
