import 'package:equatable/equatable.dart';

import 'message.dart';

class Incident extends Equatable {
  final bool active;
  final String createdAt;
  final int id;
  final List<Message> messages;

  Incident({
    this.active,
    this.createdAt,
    this.id,
    this.messages,
  });

  @override
  List<Object> get props => [
        this.active,
        this.createdAt,
        this.id,
        this.messages,
      ];
}
