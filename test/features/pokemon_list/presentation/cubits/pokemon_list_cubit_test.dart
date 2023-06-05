import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_cubit.dart';
import 'package:pokedex_rest/features/search/presentation/cubits/search_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final GetPokemonDetailsUseCase getPokemonDetailsUseCase =
      MockGetPokemonDetailsUseCase();

  final SearchCubit searchCubit = MockSearchCubit();

  PokemonListCubit buildCubit() => PokemonListCubit(searchCubit: searchCubit);
  final PokemonListState initialState = PokemonListState.initial();
  const int defaultPageSize = 20;

  setUpAll(() {
    getIt.registerLazySingletonAsync<GetPokemonDetailsUseCase>(
      () async => getPokemonDetailsUseCase,
    );
    when(() => getPokemonDetailsUseCase.call(captureAny()))
        .thenAnswer((_) async => tPokemonDetails);
  });

  PokemonListState pageLoadedState({int currentPage = 1}) {
    return initialState.copyWith(
      status: PokemonListStateStatus.loaded,
      pokemonDetailsList: List.generate(
        currentPage * defaultPageSize,
        (_) => tPokemonDetails,
      ),
      currentPage: currentPage,
    );
  }

  void setupEmptySearchStream() =>
      when(() => searchCubit.stream).thenAnswer((_) => const Stream.empty());

  void verifyPokemonDetailsCalls({int currentPage = 1}) {
    final pageStartIndex = defaultPageSize * (currentPage - 1) + 1;
    final pageEndIndex = defaultPageSize * currentPage + 1;

    for (int i = pageStartIndex; i < pageEndIndex; i++) {
      verify(() => getPokemonDetailsUseCase.call('$i')).called(1);
    }
  }

  group('PokemonListCubit', () {
    blocTest<PokemonListCubit, PokemonListState>(
      'should emit correct states when searchCubit.stream is not empty and'
      ' searchedPokemonDetails is empty',
      setUp: () => when(() => searchCubit.stream).thenAnswer((_) =>
          Stream.value(const SearchState(status: SearchStateStatus.loading))),
      build: buildCubit,
      expect: () =>
          [initialState.copyWith(searchState: SearchStateStatus.loading)],
    );

    blocTest<PokemonListCubit, PokemonListState>(
      'should emit correct states when searchCubit.stream is not empty and '
      'searchedPokemonDetails has value',
      setUp: () => when(() => searchCubit.stream)
          .thenAnswer((_) => Stream.value(SearchState(
                status: SearchStateStatus.loaded,
                pokemonDetails: tPokemonDetails,
              ))),
      build: buildCubit,
      expect: () => [
        initialState.copyWith(searchState: SearchStateStatus.loaded),
        initialState.copyWith(
          searchState: SearchStateStatus.loaded,
          searchedPokemonDetails: tPokemonDetails,
        )
      ],
    );

    group('getPokemonDetailsList', () {
      blocTest<PokemonListCubit, PokemonListState>(
        'should emit loaded status and pokemon list on a successful use case call',
        setUp: setupEmptySearchStream,
        build: buildCubit,
        act: (cubit) => cubit.getPokemonDetailsList(),
        expect: () => [
          initialState.copyWith(status: PokemonListStateStatus.loading),
          pageLoadedState(),
        ],
        verify: (_) => [
          verifyPokemonDetailsCalls(),
        ],
      );
    });

    group('fetchNextPage', () {
      blocTest<PokemonListCubit, PokemonListState>(
        'should not emit anything if state.isLoading',
        setUp: setupEmptySearchStream,
        seed: () =>
            pageLoadedState().copyWith(status: PokemonListStateStatus.loading),
        build: buildCubit,
        act: (cubit) => cubit.fetchNextPage(),
      );

      blocTest<PokemonListCubit, PokemonListState>(
        'should emit pokemonDetailsList on a successful call',
        setUp: setupEmptySearchStream,
        seed: pageLoadedState,
        build: buildCubit,
        act: (cubit) => cubit.fetchNextPage(),
        expect: () => [
          pageLoadedState().copyWith(status: PokemonListStateStatus.loading),
          pageLoadedState(currentPage: 2),
        ],
        verify: (_) => [verifyPokemonDetailsCalls(currentPage: 2)],
      );
    });
  });
}
