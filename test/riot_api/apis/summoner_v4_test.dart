import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/riot_api/apis/impl/summoner_v4_impl.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/model/summoner_dto.dart';
import 'package:test/test.dart';

import '../fixtures/summoner_dto.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  SummonerV4Impl summonerV4Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    summonerV4Impl = SummonerV4Impl(
        clientGenerator: clientGenerator, apiKeyStore: mockApiKeyStore);
  });

  final summonerDto = SummonerDTO.fromJson(SummonerDtoFixture.data);
  final summonerDtoString = SummonerDtoFixture.json;

  void setUpMockApiKeyStore() {
    when(mockApiKeyStore.checkApiKey()).thenAnswer((_) => null);
  }

  void setUpMockHttpClientSuccess() {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response(summonerDtoString, 200));
  }

  void setUpMockHttpClientFailure(int code) {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('{}', code));
  }

  group('getSummonerByAccountId', () {
    test('should get summoner data from account ID', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess();
      // Act
      final result =
          await summonerV4Impl.getSummonerFromAccountId(summonerDto.accountId);
      // Assert
      expect(result, summonerDto);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = summonerV4Impl.getSummonerFromAccountId;
      // Assert
      expectLater(
          call(summonerDto.accountId), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = summonerV4Impl.getSummonerFromAccountId;
      // Assert
      expectLater(
          call(summonerDto.accountId), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getSummonerByName', () {
    test('should get summoner data from name', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess();
      // Act
      final result = await summonerV4Impl.getSummonerFromName(summonerDto.name);
      // Assert
      expect(result, summonerDto);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = summonerV4Impl.getSummonerFromName;
      // Assert
      expectLater(
          call(summonerDto.name), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = summonerV4Impl.getSummonerFromName;
      // Assert
      expectLater(
          call(summonerDto.name), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getSummonerBySummonerId', () {
    test('should get summoner data from name', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess();
      // Act
      final result =
          await summonerV4Impl.getSummonerFromSummonerId(summonerDto.id);
      // Assert
      expect(result, summonerDto);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = summonerV4Impl.getSummonerFromSummonerId;
      // Assert
      expectLater(call(summonerDto.id), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = summonerV4Impl.getSummonerFromSummonerId;
      // Assert
      expectLater(call(summonerDto.id), throwsA(TypeMatcher<ResponseError>()));
    });
  });

  group('getSummonerByPuuid', () {
    test('should get summoner data from name', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess();
      // Act
      final result =
          await summonerV4Impl.getSummonerFromPuuid(summonerDto.puuid);
      // Assert
      expect(result, summonerDto);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = summonerV4Impl.getSummonerFromPuuid;
      // Assert
      expectLater(
          call(summonerDto.puuid), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = summonerV4Impl.getSummonerFromPuuid;
      // Assert
      expectLater(
          call(summonerDto.puuid), throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
