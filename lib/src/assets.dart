class MapAsset {
  final int mapId;
  final int minX;
  final int minY;
  final int maxX;
  final int maxY;

  String get imageUrl => null;

  const MapAsset._(this.mapId, this.minX, this.minY, this.maxX, this.maxY);

  static const summonersRiftLegacySummer =
      MapAsset._(1, -269, -83, 14276, 14522);
  static const summonersRiftLegacyAutumn =
      MapAsset._(2, -269, -83, 14276, 14522);
  static const theProvingGrounds = MapAsset._(3, -500, -500, 15000, 15000);
  static const twistedTreelineLegacy = MapAsset._(4, 0, 0, 15398, 15398);
  static const theCrystalScar = MapAsset._(8, 0, 0, 13987, 13987);
  static const twistedTreeline = MapAsset._(10, 0, 0, 15398, 15398);
  static const summonersRift = MapAsset._(11, 0, 0, 14820, 14881);
  static const howlingAbyss = MapAsset._(12, -28, -19, 12849, 12858);
  static const butchersBridge = MapAsset._(14, -28, -19, 12849, 12858);
  static const cosmicRuins = MapAsset._(16, 18, 18, 6843, 6843);
  static const valoranCityPark = MapAsset._(18, 0, 0, 1, 1);
  static const substructure43 = MapAsset._(19, 0, 0, 1, 1);
  static const crashSite = MapAsset._(20, 0, 0, 1, 1);
  static const nexusBlitz = MapAsset._(21, 0, 0, 1, 1);
}
