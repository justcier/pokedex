// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source.dart'
    as _i7;
import 'package:pokedex_rest/features/pokemon_list/data/data_sources/pokemon_list_remote_data_source_impl.dart'
    as _i8;
import 'package:pokedex_rest/features/pokemon_list/data/repositories/pokemon_list_repository_impl.dart'
    as _i10;
import 'package:pokedex_rest/features/pokemon_list/domain/repositories/pokemon_list_repository.dart'
    as _i9;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart'
    as _i11;
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart'
    as _i12;
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart'
    as _i6;
import 'package:pokedex_rest/services/injection_service/injection_registration_service.dart'
    as _i13;
import 'package:pokedex_rest/services/network_service/network_service.dart'
    as _i4;
import 'package:pokedex_rest/services/network_service/network_service_impl.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.Client>(() => injectionRegistrationService.client);
  gh.factory<_i4.NetworkService>(
      () => _i5.NetworkServiceImpl(client: get<_i3.Client>()));
  gh.factory<_i6.PokemonListCubit>(() => _i6.PokemonListCubit());
  gh.factory<_i7.PokemonListRemoteDataSource>(() =>
      _i8.PokemonListRemoteDataSourceImpl(
          networkService: get<_i4.NetworkService>()));
  gh.factory<_i9.PokemonListRepository>(() => _i10.PokemonListRepositoryImpl(
      pokemonListRemoteDataSource: get<_i7.PokemonListRemoteDataSource>()));
  gh.factory<_i11.GetAllPokemonUseCase>(
      () => _i11.GetAllPokemonUseCase(get<_i9.PokemonListRepository>()));
  gh.factory<_i12.GetPokemonDetailsUseCase>(
      () => _i12.GetPokemonDetailsUseCase(get<_i9.PokemonListRepository>()));
  return get;
}

class _$InjectionRegistrationService
    extends _i13.InjectionRegistrationService {}
