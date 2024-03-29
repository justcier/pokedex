import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/data/repositories/pokemon_list_repository_impl.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final PokemonListRemoteDataSource pokemonListRemoteDataSource =
      MockPokemonListDataSource();

  final PokemonListLocalDataSource pokemonListLocalDataSource =
      MockPokemonListLocalDataSource();

  final PokemonListRepositoryImpl pokemonListRepositoryImpl =
      PokemonListRepositoryImpl(
    pokemonListRemoteDataSource: pokemonListRemoteDataSource,
    pokemonListLocalDataSource: pokemonListLocalDataSource,
  );

  setUpAll(() {
    registerFallbackValue(tPokemonDetails);
  });

  group('getPokemonDetails', () {
    test(
      'should correctly propagate the call to remote data source and return pokemon details on a successful call',
      () async {
        // Arrange
        when(
          () => pokemonListRemoteDataSource.getPokemonDetails(captureAny()),
        ).thenAnswer((_) async => tPokemonDetails);

        // Act
        final result = await pokemonListRepositoryImpl.getPokemonDetails(tId);

        // Assert
        verify(() => pokemonListRemoteDataSource.getPokemonDetails(tId))
            .called(1);
        expect(result, tPokemonDetails);
      },
    );
  });

  group('getPokemonSpecies', () {
    test(
      'should correctly propagate the call to remote data source and return pokemon species on a successful call',
      () async {
        // Arrange
        when(
          () => pokemonListRemoteDataSource.getPokemonSpecies(captureAny()),
        ).thenAnswer((_) async => tPokemonSpecies);

        // Act
        final result = await pokemonListRepositoryImpl.getPokemonSpecies(tId);

        // Assert
        verify(() => pokemonListRemoteDataSource.getPokemonSpecies(tId))
            .called(1);
        expect(result, tPokemonSpecies);
      },
    );
  });

  group('storeFavourites', () {
    test(
      'should correctly propagate pokemonDetails to local data source on a successful call',
      () {
        // Arrange
        when(
          () => pokemonListLocalDataSource.storeFavourites(captureAny()),
        ).thenAnswer((_) async => tPokemonDetailsList);
        // Act
        pokemonListRepositoryImpl.storeFavourites(tPokemonDetailsList);

        // Assert
        verify(() =>
                pokemonListLocalDataSource.storeFavourites(tPokemonDetailsList))
            .called(1);
      },
    );
  });

  group('getStoredFavourites', () {
    test(
      'should correctly propagate the call to local data source and return'
      'stored favourites pokemon from local storage on a successful call',
      () {
        // Arrange
        when(pokemonListLocalDataSource.getStoredFavourites)
            .thenReturn(tPokemonDetailsList);

        // Act
        final result = pokemonListRepositoryImpl.getStoredFavourites();

        // Assert
        verify(pokemonListRepositoryImpl.getStoredFavourites).called(1);
        expect(result, tPokemonDetailsList);
      },
    );
  });

  group('removeFromFavourites', () {
    test(
      'should correctly propagate call to local data source, delete item and '
      'save new pokemonDetailsList on a successful call',
      () async {
        // Arrange
        when(() => pokemonListRepositoryImpl.removeFromFavourites
            .call(captureAny())).thenAnswer((_) async {});

        // Act
        await pokemonListLocalDataSource
            .removeFromFavourites(tPokemonDetailsList.first);

        // Assert
        verify(() => pokemonListRepositoryImpl
            .removeFromFavourites(tPokemonDetailsList.first)).called(1);
      },
    );
  });
}
