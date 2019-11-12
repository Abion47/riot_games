abstract class LolDataDragon {
  void getPatchContentBundle(String version);

  void getRealmData(String realm);
  void getVersionList();

  void getLanguageList();

  void getChampionSummaryList();
  void getChampionDetails(String championName);

  void getChampionSplashImage(String championName, int splashNum);
  void getChampionSplashUrl(String championName, int splashNum);

  void getChampionLoadingScreenImage(String championId, int loadingScreenNum);
  void getChampionLoadingScreenUrl(String championId, int loadingScreenNum);

  void getChampionSquareImage(String championName);
  void getChampionSquareUrl(String championName);

  void getChampionPassiveImage(String passiveImageName);
  void getChampionPassiveUrl(String passiveImageName);

  void getChampionAbilityImage(String passiveImageName);
  void getChampionAbilityUrl(String passiveImageName);

  void getItemDataList();
}
