import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_species/pokemon_species.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@Injectable(as: PokemonListRepository)
class PokemonListRepositoryImpl implements PokemonListRepository {
  final PokemonListRemoteDataSource pokemonListRemoteDataSource;
  final PokemonListLocalDataSource pokemonListLocalDataSource;

  PokemonListRepositoryImpl({
    required this.pokemonListRemoteDataSource,
    required this.pokemonListLocalDataSource,
  });

  @override
  Future<PokemonDetails> getPokemonDetails(String id) {
    return pokemonListRemoteDataSource.getPokemonDetails(id);
  }

  @override
  Future<PokemonSpecies> getPokemonSpecies(String id) {
    return pokemonListRemoteDataSource.getPokemonSpecies(id);
  }

  @override
  Future<void> storeFavourites(List<PokemonDetails> pokemonDetailsList) {
    return pokemonListLocalDataSource.storeFavourites(pokemonDetailsList);
  }

  @override
  List<PokemonDetails> getStoredFavourites() {
    return pokemonListLocalDataSource.getStoredFavourites();
  }

  @override
  Future<void> removeFromFavourites(PokemonDetails pokemonDetails) {
    return pokemonListLocalDataSource.removeFromFavourites(pokemonDetails);
  }
}
