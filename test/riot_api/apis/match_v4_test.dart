import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/match_v4_impl.dart';
import 'package:riot_games/src/riot_api/model/match_dto.dart';
import 'package:riot_games/src/riot_api/model/matchlist_dto.dart';
import 'package:test/test.dart';

import '../fixtures/match_dto_fixture.dart';
import '../fixtures/match_list_dto_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  MatchV4Impl matchV4Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    matchV4Impl = MatchV4Impl(
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

  group('getMatchById', () {
    final match = MatchDTO.fromJson(MatchDTOFixture.data);
    final matchString = MatchDTOFixture.json;

    int matchId = 99;

    test('should get match data for the match id', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(matchString);
      // Act
      final result = await matchV4Impl.getMatchById(matchId);
      // Assert
      expect(result, match);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = matchV4Impl.getMatchById;
      // Assert
      expectLater(call(matchId), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = matchV4Impl.getMatchById;
      // Assert
      expectLater(call(matchId), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getMatchListByAccountId', () {
    final matchList = MatchlistDTO.fromJson(MatchListDTOFixture.data);
    final matchListString = MatchListDTOFixture.json;

    String accountId = 'abcde-fghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP';

    test('should get match data for the match id', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(matchListString);
      // Act
      final result = await matchV4Impl.getMatchListByAccountId(accountId);
      // Assert
      expect(result, matchList);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = matchV4Impl.getMatchListByAccountId;
      // Assert
      expectLater(call(accountId), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = matchV4Impl.getMatchListByAccountId;
      // Assert
      expectLater(call(accountId), throwsA(TypeMatcher<ResponseError>()));
    });
  });
  group('getTimelineByMatchId', () {});
  group('getMatchIdsByTournamentCode', () {});
  group('getMatchByTournamentCode', () {});
}
