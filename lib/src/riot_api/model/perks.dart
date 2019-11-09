import 'package:equatable/equatable.dart';

class Perks extends Equatable {
  final int perkStyle;
  final List<int> perkIds;
  final int perkSubStyle;

  Perks({
    this.perkStyle,
    this.perkIds,
    this.perkSubStyle,
  });

  @override
  List<Object> get props => [
        this.perkStyle,
        this.perkIds,
        this.perkSubStyle,
      ];
}
