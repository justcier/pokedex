import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_cubit.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/cubit/pokemon_details_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_pokemon_species_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../mocks.dart';
import '../../../test_data.dart';

void main() {
  final GetPokemonSpeciesUseCase getPokemonSpeciesUseCase =
      MockGetPokemonSpeciesUseCase();

  PokemonDetailsCubit buildCubit() => PokemonDetailsCubit();
  final PokemonDetailsState initialState = PokemonDetailsState.initial();

  setUpAll(() {
    getIt.registerLazySingletonAsync<GetPokemonSpeciesUseCase>(
      () async => getPokemonSpeciesUseCase,
    );
  });

  group('getPokemonSpecies', () {
    blocTest<PokemonDetailsCubit, PokemonDetailsState>(
      'should emit loaded status and pokemon species on a successful use case call',
      setUp: () => when(() => getPokemonSpeciesUseCase.call(captureAny()))
          .thenAnswer((_) async => tPokemonSpecies),
      build: buildCubit,
      act: (cubit) => cubit.getPokemonSpecies(tId),
      expect: () => [
        initialState.copyWith(status: PokemonDetailsStateStatus.loading),
        initialState.copyWith(
          status: PokemonDetailsStateStatus.loaded,
          flavorText: tFlavorText,
        ),
      ],
      verify: (_) => [
        verify(() => getPokemonSpeciesUseCase.call(tId)).called(1),
      ],
    );

    blocTest(
      'should not emit anything if flavorTextEntry == null',
      setUp: () => when(() => getPokemonSpeciesUseCase.call(captureAny()))
          .thenAnswer(
              (_) async => tPokemonSpecies.copyWith(flavorTextEntries: [])),
      build: buildCubit,
      act: (cubit) => cubit.getPokemonSpecies(tId),
      expect: () => [
        initialState.copyWith(status: PokemonDetailsStateStatus.loading),
        initialState.copyWith(status: PokemonDetailsStateStatus.loaded),
      ],
      verify: (_) => [
        verify(() => getPokemonSpeciesUseCase.call(tId)).called(1),
      ],
    );
  });
}
