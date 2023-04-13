import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@injectable
class AddToFavouritesUseCase implements UseCase<void, PokemonDetails> {
  final PokemonListRepository _pokemonListRepository;

  AddToFavouritesUseCase(this._pokemonListRepository);

  @override
  void call(PokemonDetails pokemonDetails) =>
      _pokemonListRepository.addToFavourites(pokemonDetails);
}
