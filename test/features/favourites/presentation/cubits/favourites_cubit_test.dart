import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/add_to_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final AddToFavouritesUseCase addToFavouritesUseCase =
      MockAddToFavouritesUseCase();

  FavouritesCubit buildCubit() => FavouritesCubit();

  final FavouritesState initialState = FavouritesState.initial();

  setUpAll(() {
    getIt.registerFactoryAsync<AddToFavouritesUseCase>(
      () async => addToFavouritesUseCase,
    );
  });

  group('toggleFavouriteState', () {
    // TODO create tests for favourite cubit
    blocTest<FavouritesCubit, FavouritesState>(
      'should store pokemonDetails in local storage on a successful call',
      build: buildCubit,
      act: (cubit) => cubit.toggleFavouriteState(tPokemonDetails),
      expect: () => [],
      verify: (_) => [
        verify(() => addToFavouritesUseCase.call).called(1),
      ],
    );
  });
}
