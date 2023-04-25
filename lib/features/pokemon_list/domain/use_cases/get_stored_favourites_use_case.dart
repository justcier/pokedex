import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/core/domain/use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@injectable
class GetStoredFavouritesUseCase
    implements UseCase<List<PokemonDetails>, NoParams?> {
  final PokemonListRepository _pokemonListRepository;

  GetStoredFavouritesUseCase(this._pokemonListRepository);

  @override
  List<PokemonDetails> call([NoParams? params]) =>
      _pokemonListRepository.getStoredFavourites();
}
