import 'package:equatable/equatable.dart';

class RuneDTO extends Equatable {
  final int runeId;
  final int rank;

  RuneDTO({
    this.runeId,
    this.rank,
  });

  @override
  List<Object> get props => [
        this.runeId,
        this.rank,
      ];
}
