import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_all_pokemon_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_cubit.dart';
import 'package:pokedex_rest/features/pokemon_list/presentation/cubits/pokemon_list_state.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../mocks.dart';
import '../../../test_data.dart';

void main() {
  final GetAllPokemonUseCase getAllPokemonUseCase = MockGetAllPokemonUseCase();

  PokemonListCubit buildCubit() => PokemonListCubit();
  final PokemonListState initialState = PokemonListState.initial();

  setUpAll(() {
    getIt.registerLazySingleton<GetAllPokemonUseCase>(
      () => getAllPokemonUseCase,
    );
    when(getAllPokemonUseCase.call).thenAnswer((_) async => tPokemonList);
  });

  group('getAllPokemon', () {
    blocTest<PokemonListCubit, PokemonListState>(
      'should emit loaded status and pokemon list on a successful use case call',
      build: buildCubit,
      act: (cubit) => cubit.getAllPokemon(),
      expect: () => [
        initialState.copyWith(status: PokemonListStateStatus.loading),
        initialState.copyWith(
          status: PokemonListStateStatus.loaded,
          pokemonList: tPokemonList,
        ),
      ],
      verify: (_) => [verify(getAllPokemonUseCase.call).called(1)],
    );
  });
}
