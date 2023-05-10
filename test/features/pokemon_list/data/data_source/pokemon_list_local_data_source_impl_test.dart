import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/core/data/shared_prefs_keys.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source_impl.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final SharedPreferences sharedPreferences = MockSharedPreferences();

  final PokemonListLocalDataSourceImpl pokemonListLocalDataSourceImpl =
      PokemonListLocalDataSourceImpl(sharedPreferences);

  group('PokemonListLocalDataSourceImpl', () {
    group('storeFavourite', () {
      test(
        'should store pokemonDetails',
        () async {
          // Arrange
          when(() => sharedPreferences.setString(
                captureAny(),
                captureAny(),
              )).thenAnswer((_) async => true);

          // Act
          await pokemonListLocalDataSourceImpl
              .storeFavourites(tPokemonDetailsList);

          // Assert
          verify(
            () => sharedPreferences.setString(
              SharedPrefsKeys.favouritesPokemon,
              jsonEncode(tPokemonDetailsList),
            ),
          ).called(1);
        },
      );
    });

    group('getStoredFavourites', () {
      test(
        'should return all favourites pokemon stored locally',
        () {
          // Arrange
          when(() => sharedPreferences.getString(captureAny())).thenAnswer(
              (_) => jsonEncode([tPokemonDetailsList.first.toJson()]));

          final List<PokemonDetails> storedFavourites = tPokemonDetailsList;

          // Act
          final result = pokemonListLocalDataSourceImpl.getStoredFavourites();

          // Assert
          verify(() => sharedPreferences
              .getString(SharedPrefsKeys.favouritesPokemon)).called(1);
          expect(result, storedFavourites);
        },
      );

      test(
        'should return empty list when shared preferences returns null',
        () {
          // Arrange
          when(() => sharedPreferences.getString(captureAny()))
              .thenAnswer((_) => null);

          // Act
          final result = pokemonListLocalDataSourceImpl.getStoredFavourites();

          // Assert
          verify(() => sharedPreferences
              .getString(SharedPrefsKeys.favouritesPokemon)).called(1);
          expect(result, []);
        },
      );
    });

    group('removeFromFavourites', () {
      test('should remove stored favourite if it is locally saved', () async {
        // Arrange
        when(() => sharedPreferences.getString(captureAny())).thenAnswer(
            (_) => jsonEncode([tPokemonDetailsList.first.toJson()]));
        when(() => sharedPreferences.setString(
              captureAny(),
              captureAny(),
            )).thenAnswer((_) async => true);

        // Act
        await pokemonListLocalDataSourceImpl
            .removeFromFavourites(tPokemonDetailsList.first);

        // Assert
        verify(() => sharedPreferences.getString(
              SharedPrefsKeys.favouritesPokemon,
            )).called(1);
        verify(
          () => sharedPreferences.setString(
            SharedPrefsKeys.favouritesPokemon,
            jsonEncode([]),
          ),
        ).called(1);
      });

      test(
        'should not save anything if locally stored list is empty or '
        'saved list does not contains past pokemonDetails',
        () async {
          // Arrange
          when(() => sharedPreferences.getString(captureAny()))
              .thenAnswer((_) => jsonEncode([]));

          // Act
          await pokemonListLocalDataSourceImpl
              .removeFromFavourites(tPokemonDetailsList.first);

          // Assert
          verify(() => sharedPreferences.getString(
                SharedPrefsKeys.favouritesPokemon,
              )).called(1);
          verifyNever(
            () => sharedPreferences.setString(
              captureAny(),
              captureAny(),
            ),
          );
        },
      );
    });
  });
}
