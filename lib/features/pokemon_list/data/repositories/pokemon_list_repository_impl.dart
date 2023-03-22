import 'package:injectable/injectable.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/models/pokemon_list/pokemon_list.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';

@Injectable(as: PokemonListRepository)
class PokemonListRepositoryImpl implements PokemonListRepository {
  final PokemonListRemoteDataSource pokemonListRemoteDataSource;

  PokemonListRepositoryImpl({required this.pokemonListRemoteDataSource});

  @override
  Future<PokemonList> getAllPokemon() {
    return pokemonListRemoteDataSource.getAllPokemon();
  }
}
