import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

abstract class PokemonListRemoteDataSource {
  Future<PokemonList> getAllPokemon();
  Future<PokemonDetails> getPokemonDetails(String id);
}
