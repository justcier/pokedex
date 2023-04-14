import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/core/data/shared_prefs_keys.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final SharedPreferences sharedPreferences = MockSharedPreferences();

  final PokemonListLocalDataSourceImpl pokemonListLocalDataSourceImpl =
      PokemonListLocalDataSourceImpl(sharedPreferences);

  group('PokemonListLocalDataSourceImpl', () {
    group('addToFavourite', () {
      test(
        'should store pokemonDetails',
        () async {
          // Arrange
          when(() => sharedPreferences.setString(
                captureAny(),
                captureAny(),
              )).thenAnswer((_) async => true);

          // Act
          await pokemonListLocalDataSourceImpl.addToFavourites(tPokemonDetails);

          // Assert
          verify(
            () => sharedPreferences.setString(
              SharedPrefsKeys.favouritePokemon,
              jsonEncode(tPokemonDetails),
            ),
          ).called(1);
        },
      );
    });
  });
}
