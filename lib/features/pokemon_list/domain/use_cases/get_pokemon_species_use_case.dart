import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@injectable
class GetPokemonSpeciesUseCase
    implements UseCase<Future<PokemonSpecies>, String> {
  final PokemonListRepository _pokemonRepository;

  GetPokemonSpeciesUseCase(this._pokemonRepository);

  @override
  Future<PokemonSpecies> call(String id) {
    return _pokemonRepository.getPokemonSpecies(id);
  }
}
