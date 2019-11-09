import 'package:equatable/equatable.dart';

class TournamentCodeDTO extends Equatable {
  final String map;
  final String code;
  final String spectators;
  final String region;
  final int providerId;
  final int teamSize;
  final Set<String> participants;
  final String pickType;
  final int tournamentId;
  final String lobbyName;
  final String password;
  final int id;
  final String metaData;

  TournamentCodeDTO({
    this.map,
    this.code,
    this.spectators,
    this.region,
    this.providerId,
    this.teamSize,
    this.participants,
    this.pickType,
    this.tournamentId,
    this.lobbyName,
    this.password,
    this.id,
    this.metaData,
  });

  @override
  List<Object> get props => [
        this.map,
        this.code,
        this.spectators,
        this.region,
        this.providerId,
        this.teamSize,
        this.participants,
        this.pickType,
        this.tournamentId,
        this.lobbyName,
        this.password,
        this.id,
        this.metaData,
      ];
}
