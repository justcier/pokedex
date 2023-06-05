import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_species_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/remove_from_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart';
import 'package:pokedex_rest/services/network_service/network_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

// DataSources
class MockPokemonListDataSource extends Mock
    implements PokemonListRemoteDataSource {}

class MockPokemonListLocalDataSource extends Mock
    implements PokemonListLocalDataSource {}

// Repositories
class MockPokemonListRepository extends Mock implements PokemonListRepository {}

// UseCases
class MockGetPokemonDetailsUseCase extends Mock
    implements GetPokemonDetailsUseCase {}

class MockGetPokemonSpeciesUseCase extends Mock
    implements GetPokemonSpeciesUseCase {}

class MockStoreFavouritesUseCase extends Mock
    implements StoreFavouritesUseCase {}

class MockGetStoredFavouritesUseCase extends Mock
    implements GetStoredFavouritesUseCase {}

class MockRemoveFromFavouritesUseCase extends Mock
    implements RemoveFromFavouritesUseCase {}

// Services
class MockNetworkService extends Mock implements NetworkService {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

// Cubits
class MockSearchCubit extends Mock implements SearchCubit {}
