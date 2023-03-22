import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';

abstract class PokemonListRepository {
  Future<PokemonList> getAllPokemon();
}
