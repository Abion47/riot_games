import 'package:equatable/equatable.dart';

class GameCustomizationObject extends Equatable {
  final String category;
  final String content;

  GameCustomizationObject({
    this.category,
    this.content,
  });

  @override
  List<Object> get props => [
        this.category,
        this.content,
      ];
}
