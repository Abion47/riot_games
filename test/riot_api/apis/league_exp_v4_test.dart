import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/champion_v3_impl.dart';
import 'package:riot_games/src/riot_api/apis/impl/league_exp_v4_impl.dart';
import 'package:riot_games/src/riot_api/model/champion_info.dart';
import 'package:riot_games/src/riot_api/model/league_entry_exp_dto.dart';
import 'package:test/test.dart';

import '../fixtures/champion_info_fixture.dart';
import '../fixtures/champion_mastery_dto_fixture.dart';
import '../fixtures/league_entry_exp_dto_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  LeagueExpV4Impl leagueExpV4Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    leagueExpV4Impl = LeagueExpV4Impl(
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

  group('getEntriesByQueueTierDivision', () {
    final leagueEntries = LeagueEntryExpDTOFixture.data
        .map((fix) => LeagueEntryExpDTO.fromJson(fix))
        .toSet();
    final leagueEntryString = LeagueEntryExpDTOFixture.json;

    final queue = 'RANKED_SOLO_5x5';
    final tier = 'CHALLENGER';
    final division = 'I';

    test('should get league entry data from queue, tier, and division',
        () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueEntryString);
      // Act
      final result = await leagueExpV4Impl.getEntriesInQueueTierDivision(
          queue, tier, division);
      // Assert
      expect(result, leagueEntries);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueExpV4Impl.getEntriesInQueueTierDivision;
      // Assert
      expectLater(
          call(queue, tier, division), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueExpV4Impl.getEntriesInQueueTierDivision;
      // Assert
      expectLater(
          call(queue, tier, division), throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
