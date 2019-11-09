import 'package:equatable/equatable.dart';

class Translation extends Equatable {
  final String locale;
  final String content;
  final String updatedAt;

  Translation({
    this.locale,
    this.content,
    this.updatedAt,
  });

  @override
  List<Object> get props => [
        this.locale,
        this.content,
        this.updatedAt,
      ];
}
