import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/data/repositories/pokemon_list_repository_impl.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRemoteDataSource pokemonListRemoteDataSource =
      MockPokemonListDataSource();

  final PokemonListRepositoryImpl pokemonListRepositoryImpl =
      PokemonListRepositoryImpl(
          pokemonListRemoteDataSource: pokemonListRemoteDataSource);

  group('getPokemonDetails', () {
    test(
      'should correctly propagate the call to remote data source and return pokemon details on a successful call',
      () async {
        // Arrange
        when(() => pokemonListRemoteDataSource.getPokemonDetails('1'))
            .thenAnswer((_) async => tPokemonDetails);

        // Act
        final result = await pokemonListRepositoryImpl.getPokemonDetails('1');

        // Assert
        verify(() => pokemonListRemoteDataSource.getPokemonDetails('1'))
            .called(1);
        expect(result, tPokemonDetails);
      },
    );
  });
}
