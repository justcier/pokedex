import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final MockStoreFavouritesUseCase storeFavouritesUseCase =
      MockStoreFavouritesUseCase();

  final GetStoredFavouritesUseCase getStoredFavouritesUseCase =
      MockGetStoredFavouritesUseCase();

  FavouritesCubit buildCubit() => FavouritesCubit();

  final FavouritesState initialState = FavouritesState.initial();

  setUpAll(() {
    getIt
      ..registerFactoryAsync<StoreFavouritesUseCase>(
        () async => storeFavouritesUseCase,
      )
      ..registerFactoryAsync<GetStoredFavouritesUseCase>(
          () async => getStoredFavouritesUseCase);

    when(getStoredFavouritesUseCase.call).thenReturn(tPokemonDetailsList);
    when(() => storeFavouritesUseCase.call(captureAny()))
        .thenAnswer((_) async {});
  });

  group('toggleFavouriteState', () {
    // TODO create tests for favourite cubit
    blocTest<FavouritesCubit, FavouritesState>(
      'should store pokemonDetails in local storage on a successful call',
      build: buildCubit,
      act: (cubit) => cubit.toggleFavouriteState(tPokemonDetails),
      expect: () =>
          [initialState.copyWith(favouritesList: tPokemonDetailsList)],
      verify: (_) => [
        verify(() => storeFavouritesUseCase.call(tPokemonDetailsList))
            .called(1),
      ],
    );

    // group('_getFavourites', () {
    //    blocTest<FavouritesCubit, FavouritesState>(
    //          'should emit correct states ',
    //          build: buildCubit,
    //          act: (cubit) => cubit.g,
    //          expect: () => [],
    //          verify: (_) => [],
    //        );
    // });
  });
}
