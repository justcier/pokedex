import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_rest/features/pokemon_list/domain/use_cases/store_favourites_use_case.dart';
import 'package:pokedex_rest/services/injection_service/injection_service.dart';

import '../../../../mocks.dart';

void main() {
  final StoreFavouritesUseCase addToFavouritesUseCase =
      MockAddToFavouritesUseCase();

  // FavouritesCubit buildCubit() => FavouritesCubit();

  // final FavouritesState initialState = FavouritesState.initial();

  setUpAll(() {
    getIt.registerFactoryAsync<StoreFavouritesUseCase>(
      () async => addToFavouritesUseCase,
    );
  });

  group('toggleFavouriteState', () {
    // TODO create tests for favourite cubit
    // blocTest<FavouritesCubit, FavouritesState>(
    //   'should store pokemonDetails in local storage on a successful call',
    //   build: buildCubit,
    //   act: (cubit) => cubit.toggleFavouriteState(tPokemonDetails),
    //   expect: () => [],
    //   verify: (_) => [
    //     verify(() => addToFavouritesUseCase.call).called(1),
    //   ],
    // );
  });
}
