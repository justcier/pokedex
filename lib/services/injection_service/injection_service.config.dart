// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart'
    as _i5;
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_cubit.dart'
    as _i8;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart'
    as _i14;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source_impl.dart'
    as _i15;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart'
    as _i10;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source_impl.dart'
    as _i11;
import 'package:pokedex_rest/features/pokemon_list/data/repositories/pokemon_list_repository_impl.dart'
    as _i17;
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart'
    as _i16;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart'
    as _i21;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_species_use_case.dart'
    as _i22;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart'
    as _i23;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/remove_from_favourites_use_case.dart'
    as _i18;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/search_pokemon_by_name_use_case.dart'
    as _i19;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart'
    as _i20;
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart'
    as _i9;
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart'
    as _i12;
import 'package:pokedex_rest/services/color_service/color_service.dart' as _i4;
import 'package:pokedex_rest/services/injection_service/injection_registration_service.dart'
    as _i24;
import 'package:pokedex_rest/services/network_service/network_service.dart'
    as _i6;
import 'package:pokedex_rest/services/network_service/network_service_impl.dart'
    as _i7;
import 'package:pokedex_rest/services/registration_service/registration_service.dart'
    as _i25;
import 'package:shared_preferences/shared_preferences.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectionRegistrationService = _$InjectionRegistrationService();
  final registerService = _$RegisterService();
  gh.factory<_i3.Client>(() => injectionRegistrationService.client);
  gh.factory<_i4.ColorService>(() => _i4.ColorService());
  gh.lazySingleton<_i5.FavouritesCubit>(() => _i5.FavouritesCubit());
  gh.factory<_i6.NetworkService>(
      () => _i7.NetworkServiceImpl(client: get<_i3.Client>()));
  gh.factory<_i8.PokemonDetailsCubit>(() => _i8.PokemonDetailsCubit());
  gh.factory<_i9.PokemonListCubit>(() => _i9.PokemonListCubit());
  gh.factory<_i10.PokemonListRemoteDataSource>(() =>
      _i11.PokemonListRemoteDataSourceImpl(
          networkService: get<_i6.NetworkService>()));
  gh.factory<_i12.SearchCubit>(() => _i12.SearchCubit());
  gh.factoryAsync<_i13.SharedPreferences>(() => registerService.prefs);
  gh.factoryAsync<_i14.PokemonListLocalDataSource>(() async =>
      _i15.PokemonListLocalDataSourceImpl(
          await get.getAsync<_i13.SharedPreferences>()));
  gh.factoryAsync<_i16.PokemonListRepository>(() async =>
      _i17.PokemonListRepositoryImpl(
        pokemonListRemoteDataSource: get<_i10.PokemonListRemoteDataSource>(),
        pokemonListLocalDataSource:
            await get.getAsync<_i14.PokemonListLocalDataSource>(),
      ));
  gh.factoryAsync<_i18.RemoveFromFavouritesUseCase>(() async =>
      _i18.RemoveFromFavouritesUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  gh.factoryAsync<_i19.SearchPokemonByNameUseCase>(() async =>
      _i19.SearchPokemonByNameUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  gh.factoryAsync<_i20.StoreFavouritesUseCase>(() async =>
      _i20.StoreFavouritesUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  gh.factoryAsync<_i21.GetPokemonDetailsUseCase>(() async =>
      _i21.GetPokemonDetailsUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  gh.factoryAsync<_i22.GetPokemonSpeciesUseCase>(() async =>
      _i22.GetPokemonSpeciesUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  gh.factoryAsync<_i23.GetStoredFavouritesUseCase>(() async =>
      _i23.GetStoredFavouritesUseCase(
          await get.getAsync<_i16.PokemonListRepository>()));
  return get;
}

class _$InjectionRegistrationService
    extends _i24.InjectionRegistrationService {}

class _$RegisterService extends _i25.RegisterService {}
