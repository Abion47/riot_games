import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/league_v4_impl.dart';
import 'package:riot_games/src/riot_api/model/league_entry_dto.dart';
import 'package:riot_games/src/riot_api/model/league_list_dto.dart';
import 'package:test/test.dart';

import '../fixtures/league_entry_dto_fixture.dart';
import '../fixtures/league_list_dto_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  LeagueV4Impl leagueV4Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    leagueV4Impl = LeagueV4Impl(
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

  group('getChallengerLeaguesByQueue', () {
    final leagueList = LeagueListDTO.fromJson(LeagueListDTOFixture.data);
    final leagueListString = LeagueListDTOFixture.json;

    final queue = 'RANKED_SOLO_5x5';

    test('should get challenger league data from queue', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueListString);
      // Act
      final result = await leagueV4Impl.getChallengerLeaguesInQueue(queue);
      // Assert
      expect(result, leagueList);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getChallengerLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getChallengerLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getEntriesForSummoner', () {
    final leagueEntries =
        LeagueEntryDTOFixture.data.map((dto) => LeagueEntryDTO.fromJson(dto));
    final leagueEntriesString = LeagueEntryDTOFixture.json;

    final summonerId = 'abcdefghijklmnopqrstuvwx-yzABCDE_FGHIJKLMNOP';

    test('should get league entry data from summoner id', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueEntriesString);
      // Act
      final result = await leagueV4Impl.getEntriesForSummoner(summonerId);
      // Assert
      expect(result, leagueEntries);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getEntriesForSummoner;
      // Assert
      expectLater(call(summonerId), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getEntriesForSummoner;
      // Assert
      expectLater(call(summonerId), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getEntriesInQueueTierDivision', () {
    final leagueEntries = LeagueEntryDTOFixture.data
        .map((fix) => LeagueEntryDTO.fromJson(fix))
        .toSet();
    final leagueEntryString = LeagueEntryDTOFixture.json;

    final queue = 'RANKED_SOLO_5x5';
    final tier = 'CHALLENGER';
    final division = 'I';

    test('should get league entry data from queue, tier, and division',
        () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueEntryString);
      // Act
      final result = await leagueV4Impl.getEntriesInQueueTierDivision(
        queue,
        tier,
        division,
      );
      // Assert
      expect(result, leagueEntries);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getEntriesInQueueTierDivision;
      // Assert
      expectLater(
          call(queue, tier, division), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getEntriesInQueueTierDivision;
      // Assert
      expectLater(
          call(queue, tier, division), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getGrandmasterLeaguesInQueue', () {
    final leagueList = LeagueListDTO.fromJson(LeagueListDTOFixture.data);
    final leagueListString = LeagueListDTOFixture.json;

    final queue = 'RANKED_SOLO_5x5';

    test('should get grandmaster league data from queue', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueListString);
      // Act
      final result = await leagueV4Impl.getGrandmasterLeaguesInQueue(queue);
      // Assert
      expect(result, leagueList);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getGrandmasterLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getGrandmasterLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getLeagueById', () {
    final leagueList = LeagueListDTO.fromJson(LeagueListDTOFixture.data);
    final leagueListString = LeagueListDTOFixture.json;

    final leagueId = '01234567-89ab-cdef-0123-456789abcdef';

    test('should get league data from a specific league', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueListString);
      // Act
      final result = await leagueV4Impl.getLeagueById(leagueId);
      // Assert
      expect(result, leagueList);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getLeagueById;
      // Assert
      expectLater(call(leagueId), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getLeagueById;
      // Assert
      expectLater(call(leagueId), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getMasterLeaguesInQueue', () {
    final leagueList = LeagueListDTO.fromJson(LeagueListDTOFixture.data);
    final leagueListString = LeagueListDTOFixture.json;

    final queue = 'RANKED_SOLO_5x5';

    test('should get master league data from queue', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(leagueListString);
      // Act
      final result = await leagueV4Impl.getMasterLeaguesInQueue(queue);
      // Assert
      expect(result, leagueList);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = leagueV4Impl.getMasterLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = leagueV4Impl.getMasterLeaguesInQueue;
      // Assert
      expectLater(call(queue), throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
