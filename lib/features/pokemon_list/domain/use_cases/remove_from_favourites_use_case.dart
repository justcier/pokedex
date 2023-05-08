import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@injectable
class RemoveFromFavouritesUseCase
    implements UseCase<Future<void>, PokemonDetails> {
  final PokemonListRepository _pokemonListRepository;

  RemoveFromFavouritesUseCase(this._pokemonListRepository);

  @override
  Future<void> call(PokemonDetails pokemonDetails) =>
      _pokemonListRepository.removeFromFavourites(pokemonDetails);
}
