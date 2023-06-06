import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final GetPokemonDetailsUseCase getPokemonDetailsUseCase =
      MockGetPokemonDetailsUseCase();

  SearchCubit buildCubit() => SearchCubit();
  final SearchState initialState = SearchState.initial();

  setUpAll(() {
    getIt.registerFactoryAsync<GetPokemonDetailsUseCase>(
      () async => getPokemonDetailsUseCase,
    );
    when(() => getPokemonDetailsUseCase.call(captureAny()))
        .thenAnswer((_) async => tPokemonDetails);
  });

  group('SearchCubit', () {
    group('searchPokemonByName', () {
      blocTest<SearchCubit, SearchState>(
        'should emit loaded status and pokemon list on a successful use case call',
        build: buildCubit,
        act: (cubit) => cubit.searchPokemonByName(tName),
        expect: () => [
          initialState.copyWith(status: SearchStateStatus.loading),
          initialState.copyWith(
            status: SearchStateStatus.loaded,
            pokemonDetails: tPokemonDetails,
          ),
        ],
      );
    });

    group('clearSearch', () {
      blocTest<SearchCubit, SearchState>(
        'should emit loaded status and empty pokemonDetails',
        build: buildCubit,
        act: (cubit) => cubit.clearSearch(),
        expect: () => [
          initialState.copyWith(
            pokemonDetails: null,
          ),
        ],
      );
    });
  });
}
