import 'package:equatable/equatable.dart';

class MiniSeriesExpDTO extends Equatable {
  final String progress;
  final int losses;
  final int target;
  final int wins;

  MiniSeriesExpDTO({
    this.progress,
    this.losses,
    this.target,
    this.wins,
  });

  @override
  List<Object> get props => [
        this.progress,
        this.losses,
        this.target,
        this.wins,
      ];
}
