import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_details_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../mocks.dart';
import '../../../test_data.dart';

void main() {
  final GetPokemonDetailsUseCase getPokemonDetailsUseCase =
      MockGetPokemonDetailsUseCase();

  PokemonListCubit buildCubit() => PokemonListCubit();
  final PokemonListState initialState = PokemonListState.initial();
  const int defaultPageSize = 20;

  setUpAll(() {
    getIt.registerLazySingleton<GetPokemonDetailsUseCase>(
      () => getPokemonDetailsUseCase,
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

  void verifyPokemonDetailsListCalls({int currentPage = 1}) {
    final pageStartIndex = defaultPageSize * (currentPage - 1) + 1;
    final pageEndIndex = defaultPageSize * currentPage + 1;

    for (int i = pageStartIndex; i < pageEndIndex; i++) {
      verify(() => getPokemonDetailsUseCase.call('$i')).called(1);
    }
  }

  group('getPokemonDetailsList', () {
    blocTest<PokemonListCubit, PokemonListState>(
      'should emit loaded status and pokemon list on a successful use case call',
      build: buildCubit,
      act: (cubit) => cubit.getPokemonDetailsList(),
      expect: () => [
        initialState.copyWith(status: PokemonListStateStatus.loading),
        pageLoadedState(),
      ],
      verify: (_) => [
        verifyPokemonDetailsListCalls(),
      ],
    );
  });

  group('fetchNextPage', () {
    blocTest<PokemonListCubit, PokemonListState>(
      'should not emit anything if state.isLading',
      seed: () =>
          pageLoadedState().copyWith(status: PokemonListStateStatus.loading),
      build: buildCubit,
      act: (cubit) => cubit.fetchNextPage(),
    );

    blocTest<PokemonListCubit, PokemonListState>(
      'should emit pokemonDetailsList on a successful call',
      seed: pageLoadedState,
      build: buildCubit,
      act: (cubit) => cubit.fetchNextPage(),
      expect: () => [
        pageLoadedState().copyWith(status: PokemonListStateStatus.loading),
        pageLoadedState(currentPage: 2),
      ],
      verify: (_) => [verifyPokemonDetailsListCalls(currentPage: 2)],
    );
  });
}
