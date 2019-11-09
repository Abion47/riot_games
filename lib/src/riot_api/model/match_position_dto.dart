import 'package:equatable/equatable.dart';

class MatchPositionDTO extends Equatable {
  final int x;
  final int y;

  MatchPositionDTO({
    this.x,
    this.y,
  });

  @override
  List<Object> get props => [
        this.x,
        this.y,
      ];
}
