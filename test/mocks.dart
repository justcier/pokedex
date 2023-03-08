import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';

// DataSources
class MockPokemonListDataSource extends Mock
    implements PokemonListRemoteDataSource {}

// Repositories
class MockPokemonListRepository extends Mock implements PokemonListRepository {}

// UseCases
class MockGetAllPokemonUseCase extends Mock implements GetAllPokemonUseCase {}

// Services
