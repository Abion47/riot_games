import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/champion_mastery_v4_impl.dart';
import 'package:riot_games/src/riot_api/model/champion_mastery_dto.dart';
import 'package:test/test.dart';

import '../fixtures/champion_mastery_dto_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  ChampionMasteryV4Impl championMasteryV4Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    championMasteryV4Impl = ChampionMasteryV4Impl(
      clientGenerator: clientGenerator,
      apiKeyStore: mockApiKeyStore,
    );
  });

  final championMasteryDto =
      ChampionMasteryDTO.fromJson(ChampionMasteryDtoFixture.dataSingle);
  final championMasteryDtoString = ChampionMasteryDtoFixture.jsonSingle;

  final championMasteryDtos = ChampionMasteryDtoFixture.dataList
      .map((dto) => ChampionMasteryDTO.fromJson(dto))
      .toList();
  final championMasteryDtosString = ChampionMasteryDtoFixture.jsonList;

  final championId = 99;

  final championMasteryLevel = 123;
  final championMasteryLevelString = '123';

  void setUpMockApiKeyStore() {
    when(mockApiKeyStore.checkApiKey()).thenAnswer((_) => null);
  }

  void setUpMockHttpClientSuccess(String responseString) {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response(responseString, 200));
  }

  void setUpMockHttpClientFailure(int code) {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('{}', code));
  }

  group('getChampionMasteriesFromSummonerId', () {
    test('should get champion mastery data from summoner ID', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(championMasteryDtosString);
      // Act
      final result =
          await championMasteryV4Impl.getChampionMasteriesFromSummonerId(
        championMasteryDtos[0].summonerId,
      );
      // Assert
      expect(result, championMasteryDtos);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = championMasteryV4Impl.getChampionMasteriesFromSummonerId;
      // Assert
      expectLater(call(championMasteryDtos[0].summonerId),
          throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = championMasteryV4Impl.getChampionMasteriesFromSummonerId;
      // Assert
      expectLater(call(championMasteryDtos[0].summonerId),
          throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getChampionMasteriesFromSummonerAndChampionId', () {
    test('should get champion mastery data from summoner ID', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(championMasteryDtoString);
      // Act
      final result = await championMasteryV4Impl
          .getChampionMasteriesFromSummonerAndChampionId(
        championMasteryDto.summonerId,
        championId,
      );
      // Assert
      expect(result, championMasteryDto);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call =
          championMasteryV4Impl.getChampionMasteriesFromSummonerAndChampionId;
      // Assert
      expectLater(call(championMasteryDto.summonerId, championId),
          throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call =
          championMasteryV4Impl.getChampionMasteriesFromSummonerAndChampionId;
      // Assert
      expectLater(call(championMasteryDto.summonerId, championId),
          throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getChampionMasteryScoreFromSummonerId', () {
    test('should get champion mastery data from summoner ID', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(championMasteryLevelString);
      // Act
      final result =
          await championMasteryV4Impl.getChampionMasteryScoreFromSummonerId(
        championMasteryDtos[0].summonerId,
      );
      // Assert
      expect(result, championMasteryLevel);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = championMasteryV4Impl.getChampionMasteryScoreFromSummonerId;
      // Assert
      expectLater(call(championMasteryDtos[0].summonerId),
          throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = championMasteryV4Impl.getChampionMasteryScoreFromSummonerId;
      // Assert
      expectLater(call(championMasteryDtos[0].summonerId),
          throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
