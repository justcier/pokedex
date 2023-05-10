import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_state.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/get_stored_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/remove_from_favourites_use_case.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final MockStoreFavouritesUseCase storeFavouritesUseCase =
      MockStoreFavouritesUseCase();

  final GetStoredFavouritesUseCase getStoredFavouritesUseCase =
      MockGetStoredFavouritesUseCase();

  final RemoveFromFavouritesUseCase removeFromFavouritesUseCase =
      MockRemoveFromFavouritesUseCase();

  FavouritesCubit buildCubit() => FavouritesCubit();

  final FavouritesState initialState = FavouritesState.initial();

  setUpAll(() {
    registerFallbackValue(tPokemonDetails);

    getIt
      ..registerFactoryAsync<StoreFavouritesUseCase>(
          () async => storeFavouritesUseCase)
      ..registerFactoryAsync<GetStoredFavouritesUseCase>(
          () async => getStoredFavouritesUseCase)
      ..registerFactoryAsync<RemoveFromFavouritesUseCase>(
          () async => removeFromFavouritesUseCase);

    when(getStoredFavouritesUseCase.call).thenReturn(tPokemonDetailsList);
    when(() => storeFavouritesUseCase.call(captureAny()))
        .thenAnswer((_) async {});
    when(() => removeFromFavouritesUseCase.call(captureAny()))
        .thenAnswer((_) async {});
  });

  group('toggleFavouriteState', () {
    blocTest<FavouritesCubit, FavouritesState>(
      'should store pokemonDetails in local storage on a successful call',
      build: buildCubit,
      act: (cubit) => cubit.toggleFavouriteState(tPokemonDetails),
      expect: () => [
        initialState.copyWith(favouritesList: tPokemonDetailsList),
      ],
      verify: (_) => [
        verify(() => storeFavouritesUseCase.call(tPokemonDetailsList))
            .called(1),
      ],
    );

    blocTest<FavouritesCubit, FavouritesState>(
      'should delete pokemonDetails from local storage on a successful call',
      seed: () => initialState.copyWith(favouritesList: tPokemonDetailsList),
      build: buildCubit,
      act: (cubit) => cubit.toggleFavouriteState(tPokemonDetails),
      expect: () => [initialState],
      verify: (_) => [
        verify(() => removeFromFavouritesUseCase.call(tPokemonDetails))
            .called(1),
      ],
    );
  });

  group('getFavourites', () {
    blocTest<FavouritesCubit, FavouritesState>(
      'should emit favouritesList from local storage',
      build: buildCubit,
      act: (cubit) => cubit.getFavourites(),
      expect: () => [
        initialState.copyWith(favouritesList: tPokemonDetailsList),
      ],
      verify: (_) => [
        verify(getStoredFavouritesUseCase.call),
      ],
    );
  });
}
