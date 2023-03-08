import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';

// DataSources

// Repositories
class MockPokemonRepository extends Mock implements PokemonRepository {}

// UseCases
class MockGetAllPokemonUseCase extends Mock implements GetAllPokemonUseCase {}

// Services
