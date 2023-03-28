import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/core/errors/exceptions.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source_impl.dart';
import 'package:pokedex_rest/services/network_service/network_service.dart';

import '../../../../fixtures/fixture_reader.dart';
import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final NetworkService networkService = MockNetworkService();

  final PokemonListRemoteDataSourceImpl pokemonListRemoteDataSourceImpl =
      PokemonListRemoteDataSourceImpl(networkService: networkService);

  const successStatusCode = 200;
  const errorStatusCode = 404;

  group('PokemonListRemoteDataSourceImpl', () {
    group('getPokemonDetails', () {
      test(
        'should return pokemon details',
        () async {
          // Arrange
          when(() => networkService.get(captureAny())).thenAnswer(
            (_) async => http.Response(
              fixture(Fixtures.pokemonDetails),
              successStatusCode,
            ),
          );

          // Act
          final result =
              await pokemonListRemoteDataSourceImpl.getPokemonDetails('1');

          // Assert
          expect(result, tPokemonDetails);
        },
      );

      test(
        'should throw ServerException',
        () async {
          // Arrange

          when(() => networkService.get(captureAny())).thenAnswer(
            (_) async => http.Response(
              'Something went wrong',
              errorStatusCode,
            ),
          );

          // Act
          final call = pokemonListRemoteDataSourceImpl.getPokemonDetails('1');

          // Assert
          expect(call, throwsA(isA<ServerException>()));
        },
      );
    });
  });
}
