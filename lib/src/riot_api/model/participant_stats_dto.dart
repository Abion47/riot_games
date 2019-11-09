import 'package:equatable/equatable.dart';

class ParticipantStatsDTO extends Equatable {
  final bool firstBloodAssist;
  final int visionScore;
  final int magicDamageDealtToChampions;
  final int damageDealtToObjectives;
  final int totalTimeCrowdControlDealt;
  final int intestTimeSpentLiving;
  final int perk1Var1;
  final int perk1Var3;
  final int perk1Var2;
  final int tripleKills;
  final int perk3Var3;
  final int nodeNeutralizeAssist;
  final int perk3Var2;
  final int playerScore9;
  final int playerScore8;
  final int kills;
  final int playerScore1;
  final int playerScore0;
  final int playerScore3;
  final int playerScore2;
  final int playerScore5;
  final int playerScore4;
  final int playerScore7;
  final int playerScore6;
  final int perk5Var1;
  final int perk5Var3;
  final int perk5Var2;
  final int totalScoreRank;
  final int neutralMinionsKilled;
  final int damageDealtToTurrets;
  final int physicalDamageDealtToChampions;
  final int nodeCapture;
  final int largestMultiKill;
  final int perk2Var2;
  final int perk2Var3;
  final int totalUnitsHealed;
  final int perk2Var1;
  final int perk4Var1;
  final int perk4Var2;
  final int perk4Var3;
  final int wardsKilled;
  final int largestCriticalStrike;
  final int largestKillingSpree;
  final int quadraKills;
  final int teamObjective;
  final int magicDamageDealt;
  final int item2;
  final int item3;
  final int item0;
  final int neutralMinionsKilledTeamJungle;
  final int item6;
  final int item4;
  final int item5;
  final int perk1;
  final int perk0;
  final int perk3;
  final int perk2;
  final int perk5;
  final int perk4;
  final int perk3Var1;
  final int damageSelfMitigated;
  final int magicalDamageTaken;
  final bool firstInhibitorKill;
  final int trueDamageTaken;
  final int nodeNeutralize;
  final int assists;
  final int combatPlayerScore;
  final int perkPrimaryStyle;
  final int goldSpent;
  final int trueDamageDealt;
  final int participantId;
  final int totalDamageTaken;
  final int physicalDamageDealt;
  final int sightWardsBoughtInGame;
  final int totalDamageDealtToChampions;
  final int physicalDamageTaken;
  final int totalPlayerScore;
  final bool win;
  final int objectivePlayerScore;
  final int totalDamageDealt;
  final int item1;
  final int neutralMinionsKilledEnemyJungle;
  final int deaths;
  final int wardsPlaced;
  final int perkSubStyle;
  final int turretKills;
  final bool firstBloodKill;
  final int trueDamageDealtToChampions;
  final int goldEarned;
  final int killingSprees;
  final int unrealKills;
  final int altarsCaptured;
  final bool firstTowerAssist;
  final bool firstTowerKill;
  final int champLevel;
  final int doubleKills;
  final int nodeCaptureAssist;
  final int inhibitorKills;
  final bool firstInhibitorAssist;
  final int perk0Var1;
  final int perk0Var2;
  final int perk0Var3;
  final int visionWardsBoughtInGame;
  final int altarsNeutralized;
  final int pentaKills;
  final int totalHeal;
  final int totalMinionsKilled;
  final int timeCCingOthers;

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
}
