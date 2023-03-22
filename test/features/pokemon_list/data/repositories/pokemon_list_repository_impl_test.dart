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

  group('getAllPokemon', () {
    test(
      'should correctly propagate the call to remote data source and return all pokemon on a successful call',
      () async {
        // Arrange
        when(pokemonListRemoteDataSource.getAllPokemon)
            .thenAnswer((_) async => tPokemonList);

        // Act
        final result = await pokemonListRepositoryImpl.getAllPokemon();

        // Assert
        verify(pokemonListRemoteDataSource.getAllPokemon).called(1);
        expect(result, tPokemonList);
      },
    );
  });
}
