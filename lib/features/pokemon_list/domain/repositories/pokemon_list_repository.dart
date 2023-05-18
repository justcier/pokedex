import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';

abstract class PokemonListRepository {
  Future<PokemonDetails> getPokemonDetails(String id);

  Future<PokemonSpecies> getPokemonSpecies(String id);

  Future<void> storeFavourites(List<PokemonDetails> pokemonDetailsList);

  Future<void> removeFromFavourites(PokemonDetails pokemonDetails);

  List<PokemonDetails> getStoredFavourites();
}
