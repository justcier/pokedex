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
  Future<void> storeFavourites(List<PokemonDetails> pokemonDetailsList) async {
    await _sharedPreferences.setString(
      SharedPrefsKeys.favouritesPokemon,
      jsonEncode(pokemonDetailsList),
    );
  }

  @override
  List<PokemonDetails> getStoredFavourites() {
    final String? favouritesPokemonString =
        _sharedPreferences.getString(SharedPrefsKeys.favouritesPokemon);

    if (favouritesPokemonString != null) {
      final List<PokemonDetails> favourites =
          (jsonDecode(favouritesPokemonString) as List)
              .map((e) => PokemonDetails.fromJson(e as Map<String, dynamic>))
              .toList();
      return favourites;
    } else {
      return [];
    }
  }

  @override
  Future<void> removeFromFavourites(PokemonDetails pokemonDetails) async {
    final List<PokemonDetails> storedFavourites = getStoredFavourites();

    if (storedFavourites.contains(pokemonDetails)) {
      storedFavourites.remove(pokemonDetails);
      await storeFavourites(storedFavourites);
    }
  }
}
