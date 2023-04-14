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
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source.dart'
    as _i12;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_local_data_source_impl.dart'
    as _i13;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart'
    as _i9;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source_impl.dart'
    as _i10;
import 'package:pokedex_rest/features/pokemon_list/data/repositories/pokemon_list_repository_impl.dart'
    as _i15;
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart'
    as _i14;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/add_to_favourites_use_case.dart'
    as _i16;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart'
    as _i17;
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart'
    as _i8;
import 'package:pokedex_rest/services/color_service/color_service.dart' as _i4;
import 'package:pokedex_rest/services/injection_service/injection_registration_service.dart'
    as _i18;
import 'package:pokedex_rest/services/network_service/network_service.dart'
    as _i6;
import 'package:pokedex_rest/services/network_service/network_service_impl.dart'
    as _i7;
import 'package:pokedex_rest/services/registration_service/registration_service.dart'
    as _i19;
import 'package:shared_preferences/shared_preferences.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.FavouritesCubit>(() => _i5.FavouritesCubit());
  gh.factory<_i6.NetworkService>(
      () => _i7.NetworkServiceImpl(client: get<_i3.Client>()));
  gh.factory<_i8.PokemonListCubit>(() => _i8.PokemonListCubit());
  gh.factory<_i9.PokemonListRemoteDataSource>(() =>
      _i10.PokemonListRemoteDataSourceImpl(
          networkService: get<_i6.NetworkService>()));
  gh.factoryAsync<_i11.SharedPreferences>(() => registerService.prefs);
  gh.factoryAsync<_i12.PokemonListLocalDataSource>(() async =>
      _i13.PokemonListLocalDataSourceImpl(
          await get.getAsync<_i11.SharedPreferences>()));
  gh.factoryAsync<_i14.PokemonListRepository>(
      () async => _i15.PokemonListRepositoryImpl(
            pokemonListRemoteDataSource: get<_i9.PokemonListRemoteDataSource>(),
            pokemonListLocalDataSource:
                await get.getAsync<_i12.PokemonListLocalDataSource>(),
          ));
  gh.factoryAsync<_i16.AddToFavouritesUseCase>(() async =>
      _i16.AddToFavouritesUseCase(
          await get.getAsync<_i14.PokemonListRepository>()));
  gh.factoryAsync<_i17.GetPokemonDetailsUseCase>(() async =>
      _i17.GetPokemonDetailsUseCase(
          await get.getAsync<_i14.PokemonListRepository>()));
  return get;
}

class _$InjectionRegistrationService
    extends _i18.InjectionRegistrationService {}

class _$RegisterService extends _i19.RegisterService {}
