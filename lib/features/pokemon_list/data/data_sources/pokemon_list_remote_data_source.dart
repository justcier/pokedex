import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';

abstract class PokemonListRemoteDataSource {
  Future<PokemonDetails> getPokemonDetails(String idOrName);

  Future<PokemonSpecies> getPokemonSpecies(String id);
}
