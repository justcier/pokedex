import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/data/shared_prefs_keys.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: PokemonListLocalDataSource)
class PokemonListLocalDataSourceImpl implements PokemonListLocalDataSource {
  final SharedPreferences _sharedPreferences;

  PokemonListLocalDataSourceImpl(this._sharedPreferences);

  @override
  void addToFavourites(PokemonDetails pokemonDetails) async {
    await _sharedPreferences.setString(
      SharedPrefsKeys.favouritePokemon,
      jsonEncode(pokemonDetails),
    );
  }
}
