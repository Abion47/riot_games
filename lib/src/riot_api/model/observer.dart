import 'package:equatable/equatable.dart';

class Observer extends Equatable {
  final String encryptionKey;

  Observer({this.encryptionKey});

  @override
  List<Object> get props => [encryptionKey];
}
