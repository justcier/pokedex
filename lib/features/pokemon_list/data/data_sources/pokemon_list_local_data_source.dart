import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';

abstract class PokemonListLocalDataSource {
  Future<void> addToFavourites(PokemonDetails pokemonDetails);
}
