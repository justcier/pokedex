import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

class GetAllPokemonUseCase implements UseCase<Future<PokemonList>, NoParams?> {
  final PokemonListRepository _pokemonRepository;

  GetAllPokemonUseCase(this._pokemonRepository);

  @override
  Future<PokemonList> call([NoParams? params]) =>
      _pokemonRepository.getAllPokemon();
}
