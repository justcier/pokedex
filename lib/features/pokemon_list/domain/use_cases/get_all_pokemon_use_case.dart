import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_repository.dart';

class GetAllPokemonUseCase
    implements UseCase<Future<List<Pokemon>>, NoParams?> {
  final PokemonRepository _pokemonRepository;

  GetAllPokemonUseCase(this._pokemonRepository);

  @override
  Future<List<Pokemon>> call([NoParams? params]) =>
      _pokemonRepository.getAllPokemon();
}
