class Season {
  final int id;
  final String name;

  const Season._(this.id, this.name);

  factory Season.fromValue(int value) {
    switch (value) {
      case 0:
        return preseason3;
      case 1:
        return season3;
      case 2:
        return preseason2014;
      case 3:
        return season2014;
      case 4:
        return preseason2015;
      case 5:
        return season2015;
      case 6:
        return preseason2016;
      case 7:
        return season2016;
      case 8:
        return preseason2017;
      case 9:
        return season2017;
      case 10:
        return preseason2018;
      case 11:
        return season2018;
      default:
        return Season._(value, 'Unknown');
    }
  }

  static const preseason3 = Season._(0, 'Preseason 3');
  static const season3 = Season._(1, 'Season 3');
  static const preseason2014 = Season._(2, 'Preseason 2014');
  static const season2014 = Season._(3, 'Season 2014');
  static const preseason2015 = Season._(4, 'Preseason 2015');
  static const season2015 = Season._(5, 'Season 2015');
  static const preseason2016 = Season._(6, 'Preseason 2016');
  static const season2016 = Season._(7, 'Season 2016');
  static const preseason2017 = Season._(8, 'Preseason 2017');
  static const season2017 = Season._(9, 'Season 2017');
  static const preseason2018 = Season._(10, 'Preseason 2018');
  static const season2018 = Season._(11, 'Season 2018');

  @override
  String toString() => '$name ($id)';
}

class MatchmakingQueue {
  final int id;
  final String map;
  final String description;
  final String notes;

  const MatchmakingQueue._(this.id, this.map, this.description, this.notes);

  factory MatchmakingQueue.fromId(int id) {
    switch (id) {
      case 0:
        return customGames;
      case 2:
        return summonersRiftLegacyBlindPick;
      case 4:
        return summonersRiftLegacyRankedSolo;
      case 6:
        return summonersRiftLegacyRankedPremade;
      case 7:
        return summonersRiftLegacyCoopVsAI;
      case 8:
        return twistedTreelineLegacyNormal;
      case 9:
        return twistedTreelineLegacyRankedFlex;
      case 14:
        return summonersRiftLegacyDraftPick;
      case 16:
        return crystalScarBlindPick;
      case 17:
        return crystalScarDraftPick;
      case 25:
        return crystalScarCoopVsAI;
      case 31:
        return summonersRiftLegacyCoopVsAIIntro;
      case 32:
        return summonersRiftLegacyCoopVsAIBeginner;
      case 33:
        return summonersRiftLegacyCoopVsAIIntermediate;
      case 41:
        return twistedTreelineRankedTeam;
      case 42:
        return summonersRiftRankedTeam;
      case 52:
        return twistedTreelineLegacyCoopVsAI;
      case 61:
        return summonersRiftTeamBuilder;
      case 65:
        return howlingAbyssLegacy;
      case 67:
        return howlingAbyssCoopVsAI;
      case 70:
        return summonersRiftLegacyOneForAll;
      case 72:
        return howlingAbyssSnowdownShowdown1v1;
      case 73:
        return howlingAbyssSnowdownShowdown2v2;
      case 75:
        return summonersRiftHexakill;
      case 76:
        return summonersRiftURF;
      case 78:
        return howlingAbyssOneForAllMirrorMode;
      case 83:
        return summonersRiftURFCoopVsAI;
      case 91:
        return summonersRiftLegacyDoomBots1;
      case 92:
        return summonersRiftLegacyDoomBots2;
      case 93:
        return summonersRiftLegacyDoomBots3;
      case 96:
        return crystalScarLegacyAscension;
      case 98:
        return twistedTreelineHexakill;
      case 100:
        return butchersBridge;
      case 300:
        return howlingAbyssLegacyLegendOfThePoro;
      case 310:
        return summonersRiftNemesis;
      case 313:
        return summonersRiftBlackMarketBrawlers;
      case 315:
        return summonersRiftLegacyNexusSiege;
      case 317:
        return crystalScarDefinitelyNotDominion;
      case 318:
        return summonersRiftLegacyARURF;
      case 325:
        return summonersRiftAllRandom;
      case 400:
        return summonersRiftDraftPick;
      case 410:
        return summonersRiftRankedDynamic;
      case 420:
        return summonersRiftRankedSolo;
      case 430:
        return summonersRiftBlindPick;
      case 440:
        return summonersRiftRankedFlex;
      case 450:
        return howlingAbyss;
      case 460:
        return twistedTreelineBlindPick;
      case 470:
        return twistedTreelineRankedFlex;
      case 600:
        return summonersRiftBloodHuntAssassin;
      case 610:
        return cosmicRuins;
      case 700:
        return summonersRiftClashGames;
      case 800:
        return twistedTreelineCoopVsAIIntermediate;
      case 810:
        return twistedTreelineCoopVsAIIntro;
      case 820:
        return twistedTreelineCoopVsAIBeginner;
      case 830:
        return summonersRiftCoopVsAIIntro;
      case 840:
        return summonersRiftCoopVsAIBeginner;
      case 850:
        return summonersRiftCoopVsAIIntermediate;
      case 900:
        return summonersRiftARURF;
      case 910:
        return crystalScarAscension;
      case 920:
        return howlingAbyssLegendOfThePoroKing;
      case 940:
        return summonersRiftNexusSiege;
      case 950:
        return summonersRiftDoomBotsVoting;
      case 960:
        return summonersRiftDoomBotsStandard;
      case 980:
        return valoranCityParkStarGuardianInvasionNormal;
      case 990:
        return valoranCityParkStarGuardianInvasionOnslaught;
      case 1000:
        return overcharge;
      case 1010:
        return summonersRiftSnowARURF;
      case 1020:
        return summonersRiftOneForAll;
      case 1030:
        return crashSiteIntro;
      case 1040:
        return crashSiteCadet;
      case 1050:
        return crashSiteCrewmember;
      case 1060:
        return crashSiteCaptain;
      case 1070:
        return crashSiteOnslaught;
      case 1090:
        return convergenceTeamfightTacticsNormal;
      case 1100:
        return convergenceTeamfightTacticsRanked;
      case 1200:
        return nexusBlitz;
      default:
        return MatchmakingQueue._(id, 'Unknown', '', '');
    }
  }

  static const customGames = MatchmakingQueue._(0, "Custom games", "", "");
  static const summonersRiftLegacyBlindPick = MatchmakingQueue._(
      2,
      "Summoner's Rift",
      "5v5 Blind Pick games",
      "Deprecated in patch 7.19 in favor of queueId 430");
  static const summonersRiftLegacyRankedSolo = MatchmakingQueue._(
      4,
      "Summoner's Rift",
      "5v5 Ranked Solo games",
      "Deprecated in favor of queueId 420");
  static const summonersRiftLegacyRankedPremade = MatchmakingQueue._(
      6, "Summoner's Rift", "5v5 Ranked Premade games", "Game mode deprecated");
  static const summonersRiftLegacyCoopVsAI = MatchmakingQueue._(
      7,
      "Summoner's Rift",
      "Co-op vs AI games",
      "Deprecated in favor of queueId 32 and 33");
  static const twistedTreelineLegacyNormal = MatchmakingQueue._(
      8,
      "Twisted Treeline",
      "3v3 Normal games",
      "Deprecated in patch 7.19 in favor of queueId 460");
  static const twistedTreelineLegacyRankedFlex = MatchmakingQueue._(
      9,
      "Twisted Treeline",
      "3v3 Ranked Flex games",
      "Deprecated in patch 7.19 in favor of queueId 470");
  static const summonersRiftLegacyDraftPick = MatchmakingQueue._(
      14,
      "Summoner's Rift",
      "5v5 Draft Pick games",
      "Deprecated in favor of queueId 400");
  static const crystalScarBlindPick = MatchmakingQueue._(16, "Crystal Scar",
      "5v5 Dominion Blind Pick games", "Game mode deprecated");
  static const crystalScarDraftPick = MatchmakingQueue._(17, "Crystal Scar",
      "5v5 Dominion Draft Pick games", "Game mode deprecated");
  static const crystalScarCoopVsAI = MatchmakingQueue._(
      25, "Crystal Scar", "Dominion Co-op vs AI games", "Game mode deprecated");
  static const summonersRiftLegacyCoopVsAIIntro = MatchmakingQueue._(
      31,
      "Summoner's Rift",
      "Co-op vs AI Intro Bot games",
      "Deprecated in patch 7.19 in favor of queueId 830");
  static const summonersRiftLegacyCoopVsAIBeginner = MatchmakingQueue._(
      32,
      "Summoner's Rift",
      "Co-op vs AI Beginner Bot games",
      "Deprecated in patch 7.19 in favor of queueId 840");
  static const summonersRiftLegacyCoopVsAIIntermediate = MatchmakingQueue._(
      33,
      "Summoner's Rift",
      "Co-op vs AI Intermediate Bot games",
      "Deprecated in patch 7.19 in favor of queueId 850");
  static const twistedTreelineRankedTeam = MatchmakingQueue._(
      41, "Twisted Treeline", "3v3 Ranked Team games", "Game mode deprecated");
  static const summonersRiftRankedTeam = MatchmakingQueue._(
      42, "Summoner's Rift", "5v5 Ranked Team games", "Game mode deprecated");
  static const twistedTreelineLegacyCoopVsAI = MatchmakingQueue._(
      52,
      "Twisted Treeline",
      "Co-op vs AI games",
      "Deprecated in patch 7.19 in favor of queueId 800");
  static const summonersRiftTeamBuilder = MatchmakingQueue._(
      61, "Summoner's Rift", "5v5 Team Builder games", "Game mode deprecated");
  static const howlingAbyssLegacy = MatchmakingQueue._(65, "Howling Abyss",
      "5v5 ARAM games", "Deprecated in patch 7.19 in favor of queueId 450");
  static const howlingAbyssCoopVsAI = MatchmakingQueue._(
      67, "Howling Abyss", "ARAM Co-op vs AI games", "Game mode deprecated");
  static const summonersRiftLegacyOneForAll = MatchmakingQueue._(
      70,
      "Summoner's Rift",
      "One for All games",
      "Deprecated in patch 8.6 in favor of queueId 1020");
  static const howlingAbyssSnowdownShowdown1v1 = MatchmakingQueue._(
      72, "Howling Abyss", "1v1 Snowdown Showdown games", "");
  static const howlingAbyssSnowdownShowdown2v2 = MatchmakingQueue._(
      73, "Howling Abyss", "2v2 Snowdown Showdown games", "");
  static const summonersRiftHexakill =
      MatchmakingQueue._(75, "Summoner's Rift", "6v6 Hexakill games", "");
  static const summonersRiftURF =
      MatchmakingQueue._(76, "Summoner's Rift", "Ultra Rapid Fire games", "");
  static const howlingAbyssOneForAllMirrorMode = MatchmakingQueue._(
      78, "Howling Abyss", "One For All: Mirror Mode games", "");
  static const summonersRiftURFCoopVsAI = MatchmakingQueue._(
      83, "Summoner's Rift", "Co-op vs AI Ultra Rapid Fire games", "");
  static const summonersRiftLegacyDoomBots1 = MatchmakingQueue._(
      91,
      "Summoner's Rift",
      "Doom Bots Rank 1 games",
      "Deprecated in patch 7.19 in favor of queueId 950");
  static const summonersRiftLegacyDoomBots2 = MatchmakingQueue._(
      92,
      "Summoner's Rift",
      "Doom Bots Rank 2 games",
      "Deprecated in patch 7.19 in favor of queueId 950");
  static const summonersRiftLegacyDoomBots3 = MatchmakingQueue._(
      93,
      "Summoner's Rift",
      "Doom Bots Rank 5 games",
      "Deprecated in patch 7.19 in favor of queueId 950");
  static const crystalScarLegacyAscension = MatchmakingQueue._(
      96,
      "Crystal Scar",
      "Ascension games",
      "Deprecated in patch 7.19 in favor of queueId 910");
  static const twistedTreelineHexakill =
      MatchmakingQueue._(98, "Twisted Treeline", "6v6 Hexakill games", "");
  static const butchersBridge =
      MatchmakingQueue._(100, "Butcher's Bridge", "5v5 ARAM games", "");
  static const howlingAbyssLegacyLegendOfThePoro = MatchmakingQueue._(
      300,
      "Howling Abyss",
      "Legend of the Poro King games",
      "Deprecated in patch 7.19 in favor of queueId 920");
  static const summonersRiftNemesis =
      MatchmakingQueue._(310, "Summoner's Rift", "Nemesis games", "");
  static const summonersRiftBlackMarketBrawlers = MatchmakingQueue._(
      313, "Summoner's Rift", "Black Market Brawlers games", "");
  static const summonersRiftLegacyNexusSiege = MatchmakingQueue._(
      315,
      "Summoner's Rift",
      "Nexus Siege games",
      "Deprecated in patch 7.19 in favor of queueId 940");
  static const crystalScarDefinitelyNotDominion = MatchmakingQueue._(
      317, "Crystal Scar", "Definitely Not Dominion games", "");
  static const summonersRiftLegacyARURF = MatchmakingQueue._(
      318,
      "Summoner's Rift",
      "ARURF games",
      "Deprecated in patch 7.19 in favor of queueId 900");
  static const summonersRiftAllRandom =
      MatchmakingQueue._(325, "Summoner's Rift", "All Random games", "");
  static const summonersRiftDraftPick =
      MatchmakingQueue._(400, "Summoner's Rift", "5v5 Draft Pick games", "");
  static const summonersRiftRankedDynamic = MatchmakingQueue._(
      410,
      "Summoner's Rift",
      "5v5 Ranked Dynamic games",
      "Game mode deprecated in patch 6.22");
  static const summonersRiftRankedSolo =
      MatchmakingQueue._(420, "Summoner's Rift", "5v5 Ranked Solo games", "");
  static const summonersRiftBlindPick =
      MatchmakingQueue._(430, "Summoner's Rift", "5v5 Blind Pick games", "");
  static const summonersRiftRankedFlex =
      MatchmakingQueue._(440, "Summoner's Rift", "5v5 Ranked Flex games", "");
  static const howlingAbyss =
      MatchmakingQueue._(450, "Howling Abyss", "5v5 ARAM games", "");
  static const twistedTreelineBlindPick =
      MatchmakingQueue._(460, "Twisted Treeline", "3v3 Blind Pick games", "");
  static const twistedTreelineRankedFlex =
      MatchmakingQueue._(470, "Twisted Treeline", "3v3 Ranked Flex games", "");
  static const summonersRiftBloodHuntAssassin = MatchmakingQueue._(
      600, "Summoner's Rift", "Blood Hunt Assassin games", "");
  static const cosmicRuins = MatchmakingQueue._(
      610, "Cosmic Ruins", "Dark Star: Singularity games", "");
  static const summonersRiftClashGames =
      MatchmakingQueue._(700, "Summoner's Rift", "Clash games", "");
  static const twistedTreelineCoopVsAIIntermediate = MatchmakingQueue._(
      800, "Twisted Treeline", "Co-op vs. AI Intermediate Bot games", "");
  static const twistedTreelineCoopVsAIIntro = MatchmakingQueue._(
      810, "Twisted Treeline", "Co-op vs. AI Intro Bot games", "");
  static const twistedTreelineCoopVsAIBeginner = MatchmakingQueue._(
      820, "Twisted Treeline", "Co-op vs. AI Beginner Bot games", "");
  static const summonersRiftCoopVsAIIntro = MatchmakingQueue._(
      830, "Summoner's Rift", "Co-op vs. AI Intro Bot games", "");
  static const summonersRiftCoopVsAIBeginner = MatchmakingQueue._(
      840, "Summoner's Rift", "Co-op vs. AI Beginner Bot games", "");
  static const summonersRiftCoopVsAIIntermediate = MatchmakingQueue._(
      850, "Summoner's Rift", "Co-op vs. AI Intermediate Bot games", "");
  static const summonersRiftARURF =
      MatchmakingQueue._(900, "Summoner's Rift", "ARURF games", "");
  static const crystalScarAscension =
      MatchmakingQueue._(910, "Crystal Scar", "Ascension games", "");
  static const howlingAbyssLegendOfThePoroKing = MatchmakingQueue._(
      920, "Howling Abyss", "Legend of the Poro King games", "");
  static const summonersRiftNexusSiege =
      MatchmakingQueue._(940, "Summoner's Rift", "Nexus Siege games", "");
  static const summonersRiftDoomBotsVoting =
      MatchmakingQueue._(950, "Summoner's Rift", "Doom Bots Voting games", "");
  static const summonersRiftDoomBotsStandard = MatchmakingQueue._(
      960, "Summoner's Rift", "Doom Bots Standard games", "");
  static const valoranCityParkStarGuardianInvasionNormal = MatchmakingQueue._(
      980, "Valoran City Park", "Star Guardian Invasion: Normal games", "");
  static const valoranCityParkStarGuardianInvasionOnslaught =
      MatchmakingQueue._(990, "Valoran City Park",
          "Star Guardian Invasion: Onslaught games", "");
  static const overcharge =
      MatchmakingQueue._(1000, "Overcharge", "PROJECT: Hunters games", "");
  static const summonersRiftSnowARURF =
      MatchmakingQueue._(1010, "Summoner's Rift", "Snow ARURF games", "");
  static const summonersRiftOneForAll =
      MatchmakingQueue._(1020, "Summoner's Rift", "One for All games", "");
  static const crashSiteIntro = MatchmakingQueue._(
      1030, "Crash Site", "Odyssey Extraction: Intro games", "");
  static const crashSiteCadet = MatchmakingQueue._(
      1040, "Crash Site", "Odyssey Extraction: Cadet games", "");
  static const crashSiteCrewmember = MatchmakingQueue._(
      1050, "Crash Site", "Odyssey Extraction: Crewmember games", "");
  static const crashSiteCaptain = MatchmakingQueue._(
      1060, "Crash Site", "Odyssey Extraction: Captain games", "");
  static const crashSiteOnslaught = MatchmakingQueue._(
      1070, "Crash Site", "Odyssey Extraction: Onslaught games", "");
  static const convergenceTeamfightTacticsNormal =
      MatchmakingQueue._(1090, "Convergence", "Teamfight Tactics games", "");
  static const convergenceTeamfightTacticsRanked = MatchmakingQueue._(
      1100, "Convergence", "Ranked Teamfight Tactics games", "");
  static const nexusBlitz = MatchmakingQueue._(
      1200, "Nexus Blitz", "Nexus Blitz games", "Deprecated in patch 9.2");

  @override
  String toString() =>
      '$map ($id): $description ${notes.isEmpty ? "" : "($notes)"}';
}

class Map {
  final int id;
  final String name;
  final String notes;

  const Map._(this.id, this.name, this.notes);

  factory Map.fromId(int id) {
    switch (id) {
      case 1:
        return summonersRiftLegacySummer;
      case 2:
        return summonersRiftLegacyAutumn;
      case 3:
        return theProvingGrounds;
      case 4:
        return twistedTreelineLegacy;
      case 8:
        return theCrystalScar;
      case 10:
        return twistedTreeline;
      case 11:
        return summonersRift;
      case 12:
        return howlingAbyss;
      case 14:
        return butchersBridge;
      case 16:
        return cosmicRuins;
      case 18:
        return valoranCityPark;
      case 19:
        return substructure43;
      case 20:
        return crashSite;
      case 21:
        return nexusBlitz;
      default:
        return Map._(id, 'Unknown', '');
    }
  }

  static const summonersRiftLegacySummer =
      Map._(1, "Summoner's Rift", "Original Summer variant");
  static const summonersRiftLegacyAutumn =
      Map._(2, "Summoner's Rift", "Original Autumn variant");
  static const theProvingGrounds =
      Map._(3, "The Proving Grounds", "Tutorial map");
  static const twistedTreelineLegacy =
      Map._(4, "Twisted Treeline", "Original version");
  static const theCrystalScar = Map._(8, "The Crystal Scar", "Dominion map");
  static const twistedTreeline =
      Map._(10, "Twisted Treeline", "Current version");
  static const summonersRift = Map._(11, "Summoner's Rift", "Current version");
  static const howlingAbyss = Map._(12, "Howling Abyss", "ARAM map");
  static const butchersBridge = Map._(14, "Butcher's Bridge", "ARAM map");
  static const cosmicRuins =
      Map._(16, "Cosmic Ruins", "Dark Star: Singularity map");
  static const valoranCityPark =
      Map._(18, "Valoran City Park", "Star Guardian Invasion map");
  static const substructure43 =
      Map._(19, "Substructure 43", "PROJECT: Hunters map");
  static const crashSite = Map._(20, "Crash Site", "Odyssey: Extraction map");
  static const nexusBlitz = Map._(21, "Nexus Blitz", "Nexus Blitz map");

  @override
  String toString() => '$name ($id)${notes.isEmpty ? "" : ": $notes"}';
}

class GameMode {
  final String code;
  final String description;

  const GameMode._(this.code, this.description);

  factory GameMode.fromCode(String code) {
    switch (code) {
      case "CLASSIC":
        return classic;
      case "ODIN":
        return odin;
      case "ARAM":
        return aram;
      case "TUTORIAL":
        return tutorial;
      case "URF":
        return urf;
      case "DOOMBOTSTEEMO":
        return doomBotsTeemo;
      case "ONEFORALL":
        return oneForAll;
      case "ASCENSION":
        return ascension;
      case "FIRSTBLOOD":
        return firstBlood;
      case "KINGPORO":
        return kingPoro;
      case "SIEGE":
        return siege;
      case "ASSASSINATE":
        return assassinate;
      case "ARSR":
        return arsr;
      case "DARKSTAR":
        return darkStar;
      case "STARGUARDIAN":
        return starGuardian;
      case "PROJECT":
        return project;
      case "GAMEMODEX":
        return gameModeX;
      case "ODYSSEY":
        return odyssey;
      default:
        return GameMode._(code, 'Unknown');
    }
  }

  static const classic = GameMode._(
      "CLASSIC", "Classic Summoner's Rift and Twisted Treeline games");
  static const odin = GameMode._("ODIN", "Dominion/Crystal Scar games");
  static const aram = GameMode._("ARAM", "ARAM games");
  static const tutorial = GameMode._("TUTORIAL", "Tutorial games");
  static const urf = GameMode._("URF", "URF games");
  static const doomBotsTeemo = GameMode._("DOOMBOTSTEEMO", "Doom Bot games");
  static const oneForAll = GameMode._("ONEFORALL", "One for All games");
  static const ascension = GameMode._("ASCENSION", "Ascension games");
  static const firstBlood = GameMode._("FIRSTBLOOD", "Snowdown Showdown games");
  static const kingPoro =
      GameMode._("KINGPORO", "Legend of the Poro King games");
  static const siege = GameMode._("SIEGE", "Nexus Siege games");
  static const assassinate =
      GameMode._("ASSASSINATE", "Blood Hunt Assassin games");
  static const arsr = GameMode._("ARSR", "All Random Summoner's Rift games");
  static const darkStar =
      GameMode._("DARKSTAR", "Dark Star: Singularity games");
  static const starGuardian =
      GameMode._("STARGUARDIAN", "Star Guardian Invasion games");
  static const project = GameMode._("PROJECT", "PROJECT: Hunters games");
  static const gameModeX = GameMode._("GAMEMODEX", "Nexus Blitz games");
  static const odyssey = GameMode._("ODYSSEY", "Odyssey: Extraction games");

  @override
  String toString() => '$code: $description';
}

class GameType {
  final String code;
  final String description;

  const GameType._(this.code, this.description);

  factory GameType.fromCode(String code) {
    switch (code) {
      case 'CUSTOM_GAME':
        return customGame;
      case 'TUTORIAL_GAME':
        return tutorialGame;
      case 'MATCHED_GAME':
        return matchedGame;
      default:
        return GameType._(code, 'Unknown');
    }
  }

  static const customGame = GameType._('CUSTOM_GAME', 'Custom games');
  static const tutorialGame = GameType._('TUTORIAL_GAME', 'Tutorial games');
  static const matchedGame = GameType._('MATCHED_GAME', 'All other games');
}

class Regions {
  static const br = 'BR';
  static const eune = 'EUNE';
  static const euw = 'EUW';
  static const jp = 'JP';
  static const lan = 'LAN';
  static const las = 'LAS';
  static const na = 'NA';
  static const oce = 'OCE';
  static const pbe = 'PBE';
  static const ru = 'RU';
  static const tr = 'TR';
}

class ExpQueues {
  static const rankedSolo5x5 = 'RANKED_SOLO_5x5';
  static const rankedTFT = 'RANKED_TFT';
  static const rankedFlexSR = 'RANKED_FLEX_SR';
  static const rankedFlexTT = 'RANKED_FLEX_TT';

  static const allQueues = [
    rankedSolo5x5,
    rankedTFT,
    rankedFlexSR,
    rankedFlexTT,
  ];
}

class ExpTiers {
  static const iron = 'IRON';
  static const bronze = 'BRONZE';
  static const silver = 'SILVER';
  static const gold = 'GOLD';
  static const platinum = 'PLATINUM';
  static const diamond = 'DIAMOND';
  static const master = 'MASTER';
  static const grandmaster = 'GRANDMASTER';
  static const challenger = 'CHALLENGER';

  static const allTiers = [
    iron,
    bronze,
    silver,
    gold,
    platinum,
    diamond,
    master,
    grandmaster,
    challenger,
  ];
}

class ExpDivisions {
  static const i = 'I';
  static const ii = 'II';
  static const iii = 'III';
  static const iv = 'IV';

  static const allDivisions = [
    i,
    ii,
    iii,
    iv,
  ];
}

class Queues {
  static const rankedSolo5x5 = 'RANKED_SOLO_5x5';
  static const rankedTFT = 'RANKED_TFT';
  static const rankedFlexSR = 'RANKED_FLEX_SR';
  static const rankedFlexTT = 'RANKED_FLEX_TT';

  static const allQueues = [
    rankedSolo5x5,
    rankedTFT,
    rankedFlexSR,
    rankedFlexTT,
  ];
}

class Tiers {
  static const iron = 'IRON';
  static const bronze = 'BRONZE';
  static const silver = 'SILVER';
  static const gold = 'GOLD';
  static const platinum = 'PLATINUM';
  static const diamond = 'DIAMOND';
  static const master = 'MASTER';
  static const grandmaster = 'GRANDMASTER';
  static const challenger = 'CHALLENGER';

  static const allTiers = [
    iron,
    bronze,
    silver,
    gold,
    platinum,
    diamond,
    master,
    grandmaster,
    challenger,
  ];
}

class Divisions {
  static const i = 'I';
  static const ii = 'II';
  static const iii = 'III';
  static const iv = 'IV';

  static const allDivisions = [
    i,
    ii,
    iii,
    iv,
  ];
}

class GameModes {
  static const classic = 'CLASSIC';
  static const odin = 'ODIN';
  static const aram = 'ARAM';
  static const tutorial = 'TUTORIAL';
  static const oneForAll = 'ONEFORALL';
  static const ascension = 'ASCENSION';
  static const firstBlood = 'FIRSTBLOOD';
  static const kingPoro = 'KINGPORO';

  static const allGameModes = [
    classic,
    odin,
    aram,
    tutorial,
    oneForAll,
    ascension,
    firstBlood,
    kingPoro,
  ];
}

class GameTypes {
  static const customGame = 'CUSTOM_GAME';
  static const matchedGame = 'MATCHED_GAME';
  static const tutorialGame = 'TUTORIAL_GAME';

  static const allGameTypes = [
    customGame,
    matchedGame,
    tutorialGame,
  ];
}

class MatchEvents {
  static const String championKill = 'CHAMPION_KILL';
  static const String wardPlaced = 'WARD_PLACED';
  static const String wardKill = 'WARD_KILL';
  static const String buildingKill = 'BUILDING_KILL';
  static const String eliteMonsterKill = 'ELITE_MONSTER_KILL';
  static const String itemPurchased = 'ITEM_PURCHASED';
  static const String itemSold = 'ITEM_SOLD';
  static const String itemDestroyed = 'ITEM_DESTROYED';
  static const String itemUndo = 'ITEM_UNDO';
  static const String skillLevelUp = 'SKILL_LEVEL_UP';
  static const String ascendedEvent = 'ASCENDED_EVENT';
  static const String capturePoint = 'CAPTURE_POINT';
  static const String poroKingSummon = 'PORO_KING_SUMMON';

  static const allEvents = [
    championKill,
    wardPlaced,
    wardKill,
    buildingKill,
    eliteMonsterKill,
    itemPurchased,
    itemSold,
    itemDestroyed,
    itemUndo,
    skillLevelUp,
    ascendedEvent,
    capturePoint,
    poroKingSummon,
  ];
}
