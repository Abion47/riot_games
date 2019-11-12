import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/champion_v3_impl.dart';
import 'package:riot_games/src/riot_api/model/champion_info.dart';
import 'package:test/test.dart';

import '../fixtures/champion_info_fixture.dart';
import '../fixtures/champion_mastery_dto_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  ChampionV3Impl championV3Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    championV3Impl = ChampionV3Impl(
      clientGenerator: clientGenerator,
      apiKeyStore: mockApiKeyStore,
    );
  });

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

  group('getChampionRotations', () {
    final championInfo = ChampionInfo.fromJson(ChampionInfoFixture.data);
    final championInfoString = ChampionInfoFixture.json;

    test('should get champion mastery data from summoner ID', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(championInfoString);
      // Act
      final result = await championV3Impl.getChampionRotations();
      // Assert
      expect(result, championInfo);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = championV3Impl.getChampionRotations;
      // Assert
      expectLater(call(), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = championV3Impl.getChampionRotations;
      // Assert
      expectLater(call(), throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
