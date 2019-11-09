import 'package:riot_games/src/riot_api/model/summoner_dto.dart';
import 'package:test/test.dart';

import '../fixtures/summoner_dto.dart';

void main() {
  final summonerDto = SummonerDTO.fromJson(SummonerDtoFixture.data);
  final summonerDtoJson = SummonerDtoFixture.data;

  test('should correctly parse an object as input', () {
    final result = SummonerDTO.fromJson(summonerDtoJson);
    expect(result, equals(summonerDto));
  });

  test('should fail if given null as an input', () {
    final func = () => SummonerDTO.fromJson(null);
    expect(func, throwsA(TypeMatcher<ArgumentError>()));
  });
}
