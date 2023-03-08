import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon.dart';

abstract class PokemonListRepository {
  Future<List<Pokemon>> getAllPokemon();
}
