import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:riot_games/src/api_key_store.dart';
import 'package:riot_games/src/core/network.dart';
import 'package:riot_games/src/riot_api/apis/impl/lol_status_v3_impl.dart';
import 'package:riot_games/src/riot_api/model/shard_status.dart';
import 'package:test/test.dart';

import '../fixtures/shard_status_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockApiKeyStore extends Mock implements ApiKeyStore {}

void main() {
  LolStatusV3Impl lolStatusv3Impl;
  MockHttpClient mockHttpClient;
  MockApiKeyStore mockApiKeyStore;

  http.Client clientGenerator() => mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockApiKeyStore = MockApiKeyStore();
    lolStatusv3Impl = LolStatusV3Impl(
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

  group('getShardData', () {
    final shardData = ShardStatus.fromJson(ShardStatusFixture.data);
    final shardDataString = ShardStatusFixture.json;

    test('should get shard data for the current locale', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientSuccess(shardDataString);
      // Act
      final result = await lolStatusv3Impl.getShardData();
      // Assert
      expect(result, shardData);
    });

    test('should throw an error if offline', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(0);
      // Act
      final call = lolStatusv3Impl.getShardData;
      // Assert
      expectLater(call(), throwsA(TypeMatcher<ResponseError>()));
    });

    test('should throw an error if the return code is not 200', () async {
      // Arrange
      setUpMockApiKeyStore();
      setUpMockHttpClientFailure(400);
      // Act
      final call = lolStatusv3Impl.getShardData;
      // Assert
      expectLater(call(), throwsA(TypeMatcher<ResponseError>()));
    });
  });
}
