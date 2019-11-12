import 'package:equatable/equatable.dart';

class ParticipantStatsDTO extends Equatable {
  ParticipantStatsDTO({
    this.firstBloodAssist,
    this.visionScore,
    this.magicDamageDealtToChampions,
    this.damageDealtToObjectives,
    this.totalTimeCrowdControlDealt,
    this.intestTimeSpentLiving,
    this.perk1Var1,
    this.perk1Var3,
    this.perk1Var2,
    this.tripleKills,
    this.perk3Var3,
    this.nodeNeutralizeAssist,
    this.perk3Var2,
    this.playerScore9,
    this.playerScore8,
    this.kills,
    this.playerScore1,
    this.playerScore0,
    this.playerScore3,
    this.playerScore2,
    this.playerScore5,
    this.playerScore4,
    this.playerScore7,
    this.playerScore6,
    this.perk5Var1,
    this.perk5Var3,
    this.perk5Var2,
    this.totalScoreRank,
    this.neutralMinionsKilled,
    this.damageDealtToTurrets,
    this.physicalDamageDealtToChampions,
    this.nodeCapture,
    this.largestMultiKill,
    this.perk2Var2,
    this.perk2Var3,
    this.totalUnitsHealed,
    this.perk2Var1,
    this.perk4Var1,
    this.perk4Var2,
    this.perk4Var3,
    this.wardsKilled,
    this.largestCriticalStrike,
    this.largestKillingSpree,
    this.quadraKills,
    this.teamObjective,
    this.magicDamageDealt,
    this.item2,
    this.item3,
    this.item0,
    this.neutralMinionsKilledTeamJungle,
    this.item6,
    this.item4,
    this.item5,
    this.perk1,
    this.perk0,
    this.perk3,
    this.perk2,
    this.perk5,
    this.perk4,
    this.perk3Var1,
    this.damageSelfMitigated,
    this.magicalDamageTaken,
    this.firstInhibitorKill,
    this.trueDamageTaken,
    this.nodeNeutralize,
    this.assists,
    this.combatPlayerScore,
    this.perkPrimaryStyle,
    this.goldSpent,
    this.trueDamageDealt,
    this.participantId,
    this.totalDamageTaken,
    this.physicalDamageDealt,
    this.sightWardsBoughtInGame,
    this.totalDamageDealtToChampions,
    this.physicalDamageTaken,
    this.totalPlayerScore,
    this.win,
    this.objectivePlayerScore,
    this.totalDamageDealt,
    this.item1,
    this.neutralMinionsKilledEnemyJungle,
    this.deaths,
    this.wardsPlaced,
    this.perkSubStyle,
    this.turretKills,
    this.firstBloodKill,
    this.trueDamageDealtToChampions,
    this.goldEarned,
    this.killingSprees,
    this.unrealKills,
    this.altarsCaptured,
    this.firstTowerAssist,
    this.firstTowerKill,
    this.champLevel,
    this.doubleKills,
    this.nodeCaptureAssist,
    this.inhibitorKills,
    this.firstInhibitorAssist,
    this.perk0Var1,
    this.perk0Var2,
    this.perk0Var3,
    this.visionWardsBoughtInGame,
    this.altarsNeutralized,
    this.pentaKills,
    this.totalHeal,
    this.totalMinionsKilled,
    this.timeCCingOthers,
  });

  ///
  final bool firstBloodAssist;

  ///
  final int visionScore;

  ///
  final int magicDamageDealtToChampions;

  ///
  final int damageDealtToObjectives;

  ///
  final int totalTimeCrowdControlDealt;

  ///
  final int intestTimeSpentLiving;

  /// Post game rune stats.
  final int perk1Var1;

  /// Post game rune stats.
  final int perk1Var3;

  /// Post game rune stats.
  final int perk1Var2;

  ///
  final int tripleKills;

  /// Post game rune stats.
  final int perk3Var3;

  ///
  final int nodeNeutralizeAssist;

  /// Post game rune stats.
  final int perk3Var2;

  ///
  final int playerScore9;

  ///
  final int playerScore8;

  ///
  final int kills;

  ///
  final int playerScore1;

  ///
  final int playerScore0;

  ///
  final int playerScore3;

  ///
  final int playerScore2;

  ///
  final int playerScore5;

  ///
  final int playerScore4;

  ///
  final int playerScore7;

  ///
  final int playerScore6;

  /// Post game rune stats.
  final int perk5Var1;

  /// Post game rune stats.
  final int perk5Var3;

  /// Post game rune stats.
  final int perk5Var2;

  ///
  final int totalScoreRank;

  ///
  final int neutralMinionsKilled;

  ///
  final int damageDealtToTurrets;

  ///
  final int physicalDamageDealtToChampions;

  ///
  final int nodeCapture;

  ///
  final int largestMultiKill;

  /// Post game rune stats.
  final int perk2Var2;

  /// Post game rune stats.
  final int perk2Var3;

  ///
  final int totalUnitsHealed;

  /// Post game rune stats.
  final int perk2Var1;

  /// Post game rune stats.
  final int perk4Var1;

  /// Post game rune stats.
  final int perk4Var2;

  /// Post game rune stats.
  final int perk4Var3;

  ///
  final int wardsKilled;

  ///
  final int largestCriticalStrike;

  ///
  final int largestKillingSpree;

  ///
  final int quadraKills;

  ///
  final int teamObjective;

  ///
  final int magicDamageDealt;

  ///
  final int item2;

  ///
  final int item3;

  ///
  final int item0;

  ///
  final int neutralMinionsKilledTeamJungle;

  ///
  final int item6;

  ///
  final int item4;

  ///
  final int item5;

  /// Primary path rune.
  final int perk1;

  /// Primary path keystone rune.
  final int perk0;

  /// Primary path rune.
  final int perk3;

  /// Primary path rune.
  final int perk2;

  /// Secondary path rune.
  final int perk5;

  /// Secondary path rune.
  final int perk4;

  /// Post game rune stats.
  final int perk3Var1;

  ///
  final int damageSelfMitigated;

  ///
  final int magicalDamageTaken;

  ///
  final bool firstInhibitorKill;

  ///
  final int trueDamageTaken;

  ///
  final int nodeNeutralize;

  ///
  final int assists;

  ///
  final int combatPlayerScore;

  /// Primary rune path
  final int perkPrimaryStyle;

  ///
  final int goldSpent;

  ///
  final int trueDamageDealt;

  ///
  final int participantId;

  ///
  final int totalDamageTaken;

  ///
  final int physicalDamageDealt;

  ///
  final int sightWardsBoughtInGame;

  ///
  final int totalDamageDealtToChampions;

  ///
  final int physicalDamageTaken;

  ///
  final int totalPlayerScore;

  ///
  final bool win;

  ///
  final int objectivePlayerScore;

  ///
  final int totalDamageDealt;

  ///
  final int item1;

  ///
  final int neutralMinionsKilledEnemyJungle;

  ///
  final int deaths;

  ///
  final int wardsPlaced;

  /// Secondary rune path
  final int perkSubStyle;

  ///
  final int turretKills;

  ///
  final bool firstBloodKill;

  ///
  final int trueDamageDealtToChampions;

  ///
  final int goldEarned;

  ///
  final int killingSprees;

  ///
  final int unrealKills;

  ///
  final int altarsCaptured;

  ///
  final bool firstTowerAssist;

  ///
  final bool firstTowerKill;

  ///
  final int champLevel;

  ///
  final int doubleKills;

  ///
  final int nodeCaptureAssist;

  ///
  final int inhibitorKills;

  ///
  final bool firstInhibitorAssist;

  /// Post game rune stats.
  final int perk0Var1;

  /// Post game rune stats.
  final int perk0Var2;

  /// Post game rune stats.
  final int perk0Var3;

  ///
  final int visionWardsBoughtInGame;

  ///
  final int altarsNeutralized;

  ///
  final int pentaKills;

  ///
  final int totalHeal;

  ///
  final int totalMinionsKilled;

  ///
  final int timeCCingOthers;

  @override
  List<Object> get props => [
        this.firstBloodAssist,
        this.visionScore,
        this.magicDamageDealtToChampions,
        this.damageDealtToObjectives,
        this.totalTimeCrowdControlDealt,
        this.intestTimeSpentLiving,
        this.perk1Var1,
        this.perk1Var3,
        this.perk1Var2,
        this.tripleKills,
        this.perk3Var3,
        this.nodeNeutralizeAssist,
        this.perk3Var2,
        this.playerScore9,
        this.playerScore8,
        this.kills,
        this.playerScore1,
        this.playerScore0,
        this.playerScore3,
        this.playerScore2,
        this.playerScore5,
        this.playerScore4,
        this.playerScore7,
        this.playerScore6,
        this.perk5Var1,
        this.perk5Var3,
        this.perk5Var2,
        this.totalScoreRank,
        this.neutralMinionsKilled,
        this.damageDealtToTurrets,
        this.physicalDamageDealtToChampions,
        this.nodeCapture,
        this.largestMultiKill,
        this.perk2Var2,
        this.perk2Var3,
        this.totalUnitsHealed,
        this.perk2Var1,
        this.perk4Var1,
        this.perk4Var2,
        this.perk4Var3,
        this.wardsKilled,
        this.largestCriticalStrike,
        this.largestKillingSpree,
        this.quadraKills,
        this.teamObjective,
        this.magicDamageDealt,
        this.item2,
        this.item3,
        this.item0,
        this.neutralMinionsKilledTeamJungle,
        this.item6,
        this.item4,
        this.item5,
        this.perk1,
        this.perk0,
        this.perk3,
        this.perk2,
        this.perk5,
        this.perk4,
        this.perk3Var1,
        this.damageSelfMitigated,
        this.magicalDamageTaken,
        this.firstInhibitorKill,
        this.trueDamageTaken,
        this.nodeNeutralize,
        this.assists,
        this.combatPlayerScore,
        this.perkPrimaryStyle,
        this.goldSpent,
        this.trueDamageDealt,
        this.participantId,
        this.totalDamageTaken,
        this.physicalDamageDealt,
        this.sightWardsBoughtInGame,
        this.totalDamageDealtToChampions,
        this.physicalDamageTaken,
        this.totalPlayerScore,
        this.win,
        this.objectivePlayerScore,
        this.totalDamageDealt,
        this.item1,
        this.neutralMinionsKilledEnemyJungle,
        this.deaths,
        this.wardsPlaced,
        this.perkSubStyle,
        this.turretKills,
        this.firstBloodKill,
        this.trueDamageDealtToChampions,
        this.goldEarned,
        this.killingSprees,
        this.unrealKills,
        this.altarsCaptured,
        this.firstTowerAssist,
        this.firstTowerKill,
        this.champLevel,
        this.doubleKills,
        this.nodeCaptureAssist,
        this.inhibitorKills,
        this.firstInhibitorAssist,
        this.perk0Var1,
        this.perk0Var2,
        this.perk0Var3,
        this.visionWardsBoughtInGame,
        this.altarsNeutralized,
        this.pentaKills,
        this.totalHeal,
        this.totalMinionsKilled,
        this.timeCCingOthers,
      ];

  factory ParticipantStatsDTO.fromJson(Map<String, dynamic> json) =>
      ParticipantStatsDTO(
        firstBloodAssist: json['firstBloodAssist'] ?? false,
        visionScore: json['visionScore'] ?? 0,
        magicDamageDealtToChampions: json['magicDamageDealtToChampions'] ?? 0,
        damageDealtToObjectives: json['damageDealtToObjectives'] ?? 0,
        totalTimeCrowdControlDealt: json['totalTimeCrowdControlDealt'] ?? 0,
        intestTimeSpentLiving: json['intestTimeSpentLiving'] ?? 0,
        perk1Var1: json['perk1Var1'] ?? 0,
        perk1Var3: json['perk1Var3'] ?? 0,
        perk1Var2: json['perk1Var2'] ?? 0,
        tripleKills: json['tripleKills'] ?? 0,
        perk3Var3: json['perk3Var3'] ?? 0,
        nodeNeutralizeAssist: json['nodeNeutralizeAssist'] ?? 0,
        perk3Var2: json['perk3Var2'] ?? 0,
        playerScore9: json['playerScore9'] ?? 0,
        playerScore8: json['playerScore8'] ?? 0,
        kills: json['kills'] ?? 0,
        playerScore1: json['playerScore1'] ?? 0,
        playerScore0: json['playerScore0'] ?? 0,
        playerScore3: json['playerScore3'] ?? 0,
        playerScore2: json['playerScore2'] ?? 0,
        playerScore5: json['playerScore5'] ?? 0,
        playerScore4: json['playerScore4'] ?? 0,
        playerScore7: json['playerScore7'] ?? 0,
        playerScore6: json['playerScore6'] ?? 0,
        perk5Var1: json['perk5Var1'] ?? 0,
        perk5Var3: json['perk5Var3'] ?? 0,
        perk5Var2: json['perk5Var2'] ?? 0,
        totalScoreRank: json['totalScoreRank'] ?? 0,
        neutralMinionsKilled: json['neutralMinionsKilled'] ?? 0,
        damageDealtToTurrets: json['damageDealtToTurrets'] ?? 0,
        physicalDamageDealtToChampions:
            json['physicalDamageDealtToChampions'] ?? 0,
        nodeCapture: json['nodeCapture'] ?? 0,
        largestMultiKill: json['largestMultiKill'] ?? 0,
        perk2Var2: json['perk2Var2'] ?? 0,
        perk2Var3: json['perk2Var3'] ?? 0,
        totalUnitsHealed: json['totalUnitsHealed'] ?? 0,
        perk2Var1: json['perk2Var1'] ?? 0,
        perk4Var1: json['perk4Var1'] ?? 0,
        perk4Var2: json['perk4Var2'] ?? 0,
        perk4Var3: json['perk4Var3'] ?? 0,
        wardsKilled: json['wardsKilled'] ?? 0,
        largestCriticalStrike: json['largestCriticalStrike'] ?? 0,
        largestKillingSpree: json['largestKillingSpree'] ?? 0,
        quadraKills: json['quadraKills'] ?? 0,
        teamObjective: json['teamObjective'] ?? 0,
        magicDamageDealt: json['magicDamageDealt'] ?? 0,
        item2: json['item2'] ?? 0,
        item3: json['item3'] ?? 0,
        item0: json['item0'] ?? 0,
        neutralMinionsKilledTeamJungle:
            json['neutralMinionsKilledTeamJungle'] ?? 0,
        item6: json['item6'] ?? 0,
        item4: json['item4'] ?? 0,
        item5: json['item5'] ?? 0,
        perk1: json['perk1'] ?? 0,
        perk0: json['perk0'] ?? 0,
        perk3: json['perk3'] ?? 0,
        perk2: json['perk2'] ?? 0,
        perk5: json['perk5'] ?? 0,
        perk4: json['perk4'] ?? 0,
        perk3Var1: json['perk3Var1'] ?? 0,
        damageSelfMitigated: json['damageSelfMitigated'] ?? 0,
        magicalDamageTaken: json['magicalDamageTaken'] ?? 0,
        firstInhibitorKill: json['firstInhibitorKill'] ?? false,
        trueDamageTaken: json['trueDamageTaken'] ?? 0,
        nodeNeutralize: json['nodeNeutralize'] ?? 0,
        assists: json['assists'] ?? 0,
        combatPlayerScore: json['combatPlayerScore'] ?? 0,
        perkPrimaryStyle: json['perkPrimaryStyle'] ?? 0,
        goldSpent: json['goldSpent'] ?? 0,
        trueDamageDealt: json['trueDamageDealt'] ?? 0,
        participantId: json['participantId'] ?? 0,
        totalDamageTaken: json['totalDamageTaken'] ?? 0,
        physicalDamageDealt: json['physicalDamageDealt'] ?? 0,
        sightWardsBoughtInGame: json['sightWardsBoughtInGame'] ?? 0,
        totalDamageDealtToChampions: json['totalDamageDealtToChampions'] ?? 0,
        physicalDamageTaken: json['physicalDamageTaken'] ?? 0,
        totalPlayerScore: json['totalPlayerScore'] ?? 0,
        win: json['win'] ?? false,
        objectivePlayerScore: json['objectivePlayerScore'] ?? 0,
        totalDamageDealt: json['totalDamageDealt'] ?? 0,
        item1: json['item1'] ?? 0,
        neutralMinionsKilledEnemyJungle:
            json['neutralMinionsKilledEnemyJungle'] ?? 0,
        deaths: json['deaths'] ?? 0,
        wardsPlaced: json['wardsPlaced'] ?? 0,
        perkSubStyle: json['perkSubStyle'] ?? 0,
        turretKills: json['turretKills'] ?? 0,
        firstBloodKill: json['firstBloodKill'] ?? false,
        trueDamageDealtToChampions: json['trueDamageDealtToChampions'] ?? 0,
        goldEarned: json['goldEarned'] ?? 0,
        killingSprees: json['killingSprees'] ?? 0,
        unrealKills: json['unrealKills'] ?? 0,
        altarsCaptured: json['altarsCaptured'] ?? 0,
        firstTowerAssist: json['firstTowerAssist'] ?? false,
        firstTowerKill: json['firstTowerKill'] ?? false,
        champLevel: json['champLevel'] ?? 0,
        doubleKills: json['doubleKills'] ?? 0,
        nodeCaptureAssist: json['nodeCaptureAssist'] ?? 0,
        inhibitorKills: json['inhibitorKills'] ?? 0,
        firstInhibitorAssist: json['firstInhibitorAssist'] ?? false,
        perk0Var1: json['perk0Var1'] ?? 0,
        perk0Var2: json['perk0Var2'] ?? 0,
        perk0Var3: json['perk0Var3'] ?? 0,
        visionWardsBoughtInGame: json['visionWardsBoughtInGame'] ?? 0,
        altarsNeutralized: json['altarsNeutralized'] ?? 0,
        pentaKills: json['pentaKills'] ?? 0,
        totalHeal: json['totalHeal'] ?? 0,
        totalMinionsKilled: json['totalMinionsKilled'] ?? 0,
        timeCCingOthers: json['timeCCingOthers'] ?? 0,
      );

  @override
  String toString() =>
      'ParticipantStateDTO ' +
      {
        'firstBloodAssist': firstBloodAssist,
        'visionScore': visionScore,
        'magicDamageDealtToChampions': magicDamageDealtToChampions,
        'damageDealtToObjectives': damageDealtToObjectives,
        'totalTimeCrowdControlDealt': totalTimeCrowdControlDealt,
        'intestTimeSpentLiving': intestTimeSpentLiving,
        'perk1Var1': perk1Var1,
        'perk1Var3': perk1Var3,
        'perk1Var2': perk1Var2,
        'tripleKills': tripleKills,
        'perk3Var3': perk3Var3,
        'nodeNeutralizeAssist': nodeNeutralizeAssist,
        'perk3Var2': perk3Var2,
        'playerScore9': playerScore9,
        'playerScore8': playerScore8,
        'kills': kills,
        'playerScore1': playerScore1,
        'playerScore0': playerScore0,
        'playerScore3': playerScore3,
        'playerScore2': playerScore2,
        'playerScore5': playerScore5,
        'playerScore4': playerScore4,
        'playerScore7': playerScore7,
        'playerScore6': playerScore6,
        'perk5Var1': perk5Var1,
        'perk5Var3': perk5Var3,
        'perk5Var2': perk5Var2,
        'totalScoreRank': totalScoreRank,
        'neutralMinionsKilled': neutralMinionsKilled,
        'damageDealtToTurrets': damageDealtToTurrets,
        'physicalDamageDealtToChampions': physicalDamageDealtToChampions,
        'nodeCapture': nodeCapture,
        'largestMultiKill': largestMultiKill,
        'perk2Var2': perk2Var2,
        'perk2Var3': perk2Var3,
        'totalUnitsHealed': totalUnitsHealed,
        'perk2Var1': perk2Var1,
        'perk4Var1': perk4Var1,
        'perk4Var2': perk4Var2,
        'perk4Var3': perk4Var3,
        'wardsKilled': wardsKilled,
        'largestCriticalStrike': largestCriticalStrike,
        'largestKillingSpree': largestKillingSpree,
        'quadraKills': quadraKills,
        'teamObjective': teamObjective,
        'magicDamageDealt': magicDamageDealt,
        'item2': item2,
        'item3': item3,
        'item0': item0,
        'neutralMinionsKilledTeamJungle': neutralMinionsKilledTeamJungle,
        'item6': item6,
        'item4': item4,
        'item5': item5,
        'perk1': perk1,
        'perk0': perk0,
        'perk3': perk3,
        'perk2': perk2,
        'perk5': perk5,
        'perk4': perk4,
        'perk3Var1': perk3Var1,
        'damageSelfMitigated': damageSelfMitigated,
        'magicalDamageTaken': magicalDamageTaken,
        'firstInhibitorKill': firstInhibitorKill,
        'trueDamageTaken': trueDamageTaken,
        'nodeNeutralize': nodeNeutralize,
        'assists': assists,
        'combatPlayerScore': combatPlayerScore,
        'perkPrimaryStyle': perkPrimaryStyle,
        'goldSpent': goldSpent,
        'trueDamageDealt': trueDamageDealt,
        'participantId': participantId,
        'totalDamageTaken': totalDamageTaken,
        'physicalDamageDealt': physicalDamageDealt,
        'sightWardsBoughtInGame': sightWardsBoughtInGame,
        'totalDamageDealtToChampions': totalDamageDealtToChampions,
        'physicalDamageTaken': physicalDamageTaken,
        'totalPlayerScore': totalPlayerScore,
        'win': win,
        'objectivePlayerScore': objectivePlayerScore,
        'totalDamageDealt': totalDamageDealt,
        'item1': item1,
        'neutralMinionsKilledEnemyJungle': neutralMinionsKilledEnemyJungle,
        'deaths': deaths,
        'wardsPlaced': wardsPlaced,
        'perkSubStyle': perkSubStyle,
        'turretKills': turretKills,
        'firstBloodKill': firstBloodKill,
        'trueDamageDealtToChampions': trueDamageDealtToChampions,
        'goldEarned': goldEarned,
        'killingSprees': killingSprees,
        'unrealKills': unrealKills,
        'altarsCaptured': altarsCaptured,
        'firstTowerAssist': firstTowerAssist,
        'firstTowerKill': firstTowerKill,
        'champLevel': champLevel,
        'doubleKills': doubleKills,
        'nodeCaptureAssist': nodeCaptureAssist,
        'inhibitorKills': inhibitorKills,
        'firstInhibitorAssist': firstInhibitorAssist,
        'perk0Var1': perk0Var1,
        'perk0Var2': perk0Var2,
        'perk0Var3': perk0Var3,
        'visionWardsBoughtInGame': visionWardsBoughtInGame,
        'altarsNeutralized': altarsNeutralized,
        'pentaKills': pentaKills,
        'totalHeal': totalHeal,
        'totalMinionsKilled': totalMinionsKilled,
        'timeCCingOthers': timeCCingOthers,
      }.toString();
}
