import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@injectable
class SearchPokemonByNameUseCase
    implements UseCase<Future<PokemonDetails>, String> {
  final PokemonListRepository _pokemonRepository;

  SearchPokemonByNameUseCase(this._pokemonRepository);

  @override
  Future<PokemonDetails> call(String name) {
    return _pokemonRepository.getPokemonDetails(name);
  }
}
