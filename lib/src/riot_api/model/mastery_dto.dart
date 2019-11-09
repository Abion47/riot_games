import 'package:equatable/equatable.dart';

class MasteryDTO extends Equatable {
  final int masteryId;
  final int rank;

  MasteryDTO({
    this.masteryId,
    this.rank,
  });

  @override
  List<Object> get props => [
        this.masteryId,
        this.rank,
      ];
}
