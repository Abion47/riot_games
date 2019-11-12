import 'fixture_helper.dart';

class ShardStatusFixture {
  static const data = {
    "name": "North America",
    "region_tag": "na1",
    "hostname": "prod.na1.lol.riotgames.com",
    "services": [
      {"status": "online", "incidents": [], "name": "Game", "slug": "game"},
      {
        "status": "online",
        "incidents": [
          {
            "active": true,
            "created_at": "2019-11-05T19:08:03.917Z",
            "id": 13913,
            "updates": [
              {
                "severity": "info",
                "author": "",
                "created_at": "2019-11-05T19:08:03.917Z",
                "translations": [],
                "updated_at": "2019-11-05T19:08:03.917Z",
                "id": "5dc1c893f4322c782a255051",
                "content":
                    "We have disabled transfers while we prepare for the end of the TFT ranked season.",
                "heading": "End of Season Rewards"
              }
            ]
          }
        ],
        "name": "Store",
        "slug": "store"
      },
      {
        "status": "online",
        "incidents": [],
        "name": "Website",
        "slug": "website"
      },
      {"status": "online", "incidents": [], "name": "Client", "slug": "client"}
    ],
    "slug": "na",
    "locales": ["en_US"]
  };

  static String get json => dataToJson(data);
}
