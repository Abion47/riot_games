import 'package:equatable/equatable.dart';

class MiniSeriesDTO extends Equatable {
  final String progress;
  final int losses;
  final int target;
  final int wins;

  MiniSeriesDTO({
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
