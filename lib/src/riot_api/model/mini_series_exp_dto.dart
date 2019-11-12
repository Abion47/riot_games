import 'package:equatable/equatable.dart';

class MiniSeriesExpDTO extends Equatable {
  MiniSeriesExpDTO({
    this.progress,
    this.losses,
    this.target,
    this.wins,
  });

  /// A coded string describing the player's progress in the mini series.
  ///
  /// W = win
  /// L = loss
  /// N = not played
  final String progress;

  /// The number of losses in the mini series.
  final int losses;

  /// The number of wins required to successfully complete the mini series.
  final int target;

  /// The number of wins in the mini series.
  final int wins;

  factory MiniSeriesExpDTO.fromJson(Map<String, dynamic> json) =>
      MiniSeriesExpDTO(
        progress: json['progress'],
        losses: json['losses'],
        target: json['target'],
        wins: json['wins'],
      );

  @override
  List<Object> get props => [
        this.progress,
        this.losses,
        this.target,
        this.wins,
      ];

  @override
  String toString() =>
      'MiniSeriesExpDTO ' +
      {
        'progress': this.progress,
        'losses': this.losses,
        'target': this.target,
        'wins': this.wins,
      }.toString();
}
